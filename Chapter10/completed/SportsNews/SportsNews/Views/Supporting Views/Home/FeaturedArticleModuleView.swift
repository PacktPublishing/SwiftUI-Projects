//
//  FeaturedArticleModuleView.swift
//  SportsNews
//
//  Created by Craig Clayton on 7/19/20.
//

import SwiftUI

struct FeaturedArticleModuleView: View {
    var body: some View {
        VStack {
            VStack(spacing: 0) {
                HeaderView(title: "FEATURED", subtitle: "ARTICLE")
                Divider().padding(.bottom, 5)
            }
            
            ZStack(alignment: .top) { Rectangle()
            .fill(Color.white) .cornerRadius(8)
                VStack { // (1)
                    Image("news-sample") // (2)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 140)
                        .mask(Rectangle()
                                .cornerRadius(10, corners: [.topLeft, .topRight])
                                .background(Color.clear)
                                .frame(height: 140))

                    VStack(alignment: .leading) { // (3)
                        Text("TITLE GOES HERE")
                            .custom(font: .bold, size: 21)
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce quis ante odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce quis ante odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce quis ante odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce quis ante odio.")
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
