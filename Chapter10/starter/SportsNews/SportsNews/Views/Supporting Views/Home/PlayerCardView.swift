//
//  PlayerCardView.swift
//  SportsNews
//
//  Created by Craig Clayton on 7/19/20.
//

import SwiftUI

struct PlayerCardView: View {
    var body: some View {
        Text("Player Card View")
    }
}

struct PlayerCardView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.baseGrey).edgesIgnoringSafeArea(.all)
            
            PlayerCardView()
        }
    }
}
