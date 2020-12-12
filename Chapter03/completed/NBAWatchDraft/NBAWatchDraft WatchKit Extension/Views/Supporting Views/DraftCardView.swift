//
//  DraftCardView.swift
//  NBAWatchDraft WatchKit Extension
//
//  Created by Craig Clayton on 12/22/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct DraftCardView: View {
    let prospect: Prospect
    
    var body: some View {
        VStack(alignment: .leading, spacing: -3) {
            topCard
            bottomCard
        }
    }
    
    var topCard: some View {
        HStack {
            Image(prospect.team.name.lowercased())
                .frame(height: 56)
            Spacer()
            Text(String(format: "%02d", prospect.draftPosition))
                .custom(font: .bold, size: 50)
        }
        .frame(height: 48)
        .background(Color(prospect.team.name.lowercased()))
    }
    
    var bottomCard: some View {
        VStack(spacing: -5) {
            Text(prospect.firstName.uppercased())
                .custom(font: .ultralight, size: 13)
            Text(prospect.lastName.uppercased())
                .custom(font: .bold, size: 20)
            Text(prospect.position.uppercased())
                .custom(font: .ultralight, size: 10)
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .frame(height: 60, alignment: .center)
        .background(Color.white)
        .foregroundColor(.black)
    }
}

struct DraftCardView_Previews: PreviewProvider {
    static var previews: some View {
        DraftCardView(prospect: prospect)
    }
}

extension DraftCardView_Previews {
    static var prospect: Prospect {
        return MockDraftPreviewService.currentProspect()
    }
}



