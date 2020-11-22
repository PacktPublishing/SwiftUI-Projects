//
//  CustomVideoPlayer.swift
//  SportsNews
//
//  Created by Craig Clayton on 7/31/20.
//

import SwiftUI
import AVKit

struct CustomVideoPlayer: UIViewControllerRepresentable {

    @Binding var urlPath: String
    
    private var player: AVPlayer {
        if let url = Bundle.main.url(forResource: urlPath, withExtension: "mp4") {
            return AVPlayer(url: url)
        }
        
        return AVPlayer()
    }

    func makeUIViewController(context: Context) -> AVPlayerViewController {
        return AVPlayerViewController()
    }

    func updateUIViewController(_ playerController: AVPlayerViewController, context: Context) {
        playerController.player = player
        playerController.showsPlaybackControls = true
    }
}
