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
        Text("Video Module View")
    }
}

struct VideoModuleView_Previews: PreviewProvider {
    static var previews: some View {
        VideoModuleView()
    }
}
