//
//  VideoModuleView.swift
//  SportsNews
//
//  Created by Craig Clayton on 7/19/20.
//

import SwiftUI
import AVKit

struct VideoModuleView: View {
    @State private var path: String = "video1"
    
    var body: some View {
        VStack { // (1)
            HStack { // (2)
                CustomVideoPlayer(urlPath: $path)
                    .frame(width: 578, height: 324)
                    .mask(RoundedRectangle(cornerRadius: 8)
                        .background(Color.clear)
                            .frame(width: 578, height: 324))


                VStack { // (4)
                    VStack(spacing: 0) { // (5)
                        HeaderView(title: "LATEST", subtitle: "VIDEOS", showViewAll: false)
                        Divider().padding(.bottom, 3)
                    }

                    LazyVGrid(columns: Array(repeating: .init(.flexible()), count: 2), spacing: 6) { // (6)
                        ForEach(0..<6) { _ in
                            VideoItem() 
                                .frame(minWidth: 0, maxWidth: .infinity)
                        }
                    }
                }
            }
        }
    }
}

struct VideoModuleView_Previews: PreviewProvider {
    static var previews: some View {
        VideoModuleView()
            .previewLayout(.fixed(width: 1024, height: 350))
    }
}
