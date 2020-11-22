//
//  VideoItem.swift
//  SportsNews
//
//  Created by Craig Clayton on 7/19/20.
//

import SwiftUI

struct VideoItem: View {
    var body: some View {
        Image("news-sample")
            .resizable()
            .cornerRadius(10)
            .aspectRatio(contentMode: .fill)
            .frame(minWidth: 0, maxWidth: .infinity)
            .frame(height: 90)
            .mask(Rectangle()
                    .cornerRadius(10)
                    .background(Color.clear)
                    .frame(height: 80))
    }
}

struct VideoItem_Previews: PreviewProvider {
    static var previews: some View {
        VideoItem()
    }
}
