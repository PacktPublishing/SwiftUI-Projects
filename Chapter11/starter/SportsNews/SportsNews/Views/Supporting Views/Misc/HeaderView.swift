//
//  HeaderView.swift
//  SportsNews
//
//  Created by Craig Clayton on 7/19/20.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    var viewAllTitle = "View"
    var viewAllSubtitle = "All"
    var showViewAll: Bool = true
    
    var body: some View {
        HStack(alignment: .bottom) {
            HStack(spacing: 0) {
                Text(title.uppercased()).custom(font: .bold, size: 20)
                Text(subtitle.uppercased())
                    .custom(font: .light, size: 20)
                Spacer()
            }
            
            if showViewAll { // (1)
                HStack {
                    HStack(spacing: 0) {  // (2)
                        Text(viewAllTitle.uppercased()).custom(font: .bold, size: 12)
                        Text(viewAllSubtitle.uppercased()).custom(font: .light, size: 12)
                        Image("viewall-arrow")
                    }
                    .offset(y: -2)
                }
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HeaderView(title: "Featured", subtitle: "Article", showViewAll: true)
            HeaderView(title: "Featured", subtitle: "Player", showViewAll: false)
            HeaderView(title: "Featured", subtitle: "ArticleArticleArticleArticleArticleArticleArticleArticleArticleArticleArticleArticle", showViewAll: true)
        }.previewLayout(.fixed(width: 800, height: 80))
    }
}




