//
//  FeaturedArticleModuleView.swift
//  SportsNews
//
//  Created by Craig Clayton on 7/19/20.
//

import SwiftUI

struct FeaturedArticleModuleView: View {
    @EnvironmentObject var model: SportsNewsViewModel
    
    var body: some View {
        VStack {
            VStack(spacing: 0) {
                HeaderView(title: model.dashboard.featuredArticleMod.title, subtitle: model.dashboard.featuredArticleMod.subtitle)
                Divider().padding(.bottom, 5)
            }
            
            ZStack(alignment: .top) { Rectangle()
            .fill(Color.white) .cornerRadius(8)
                VStack { // (1)
                    Image(model.dashboard.featuredArticleMod.article.image) // (2)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 140)
                        .mask(Rectangle()
                                .cornerRadius(10, corners: [.topLeft, .topRight])
                                .background(Color.clear)
                                .frame(height: 140))

                    VStack(alignment: .leading) { // (3)
                        Text(model.dashboard.featuredArticleMod.article.title.uppercased())
                            .custom(font: .bold, size: 21)
                        Text(model.dashboard.featuredArticleMod.article.summary)
                            .multilineTextAlignment(.leading)
                            .lineLimit(nil)
                            .custom(font: .medium, size: 16)
                    }.padding(.horizontal, 10)
                }

            }

        }.frame(height: 315)

    }
}

struct FeaturedArticleModuleView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedArticleModuleView()
            .previewLayout(.fixed(width: 400, height: 315))
    }
}
