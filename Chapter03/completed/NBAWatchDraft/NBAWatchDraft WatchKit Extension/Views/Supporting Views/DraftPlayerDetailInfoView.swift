//
//  DraftPlayerDetailInfoView.swift
//  NBAWatchDraft WatchKit Extension
//
//  Created by Craig Clayton on 12/22/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct DraftPlayerDetailInfoView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("POSITION:").custom(font: .bold, size: 16)
                    Text("PF").custom(font: .ultralight, size: 16)
                }
                Spacer()
            }
            
            HStack {
                VStack(alignment: .leading) {
                    Text("SCHOOL:").custom(font: .bold, size: 16)
                    Text("School").custom(font: .ultralight, size: 16)
                }
                Spacer()
            }

            HStack {
                VStack(alignment: .leading) {
                    Text("EXPERIENCE:").custom(font: .bold, size: 16)
                    Text("2").custom(font: .ultralight, size: 16)
                }
                Spacer()
            }

            HStack {
                VStack(alignment: .leading) {
                    Text("BIRTHPLACE:").custom(font: .bold, size: 16)
                    Text("Cleveland, OH").custom(font: .ultralight, size: 16)
                }
                Spacer()
            }

            HStack {
                HStack(spacing: 5) {
                    Text("HT/WT:").custom(font: .bold, size: 16)
                    Text("6'0/ 999").custom(font: .ultralight, size: 16)
                }
                Spacer()
            }

            HStack {
                VStack(alignment: .leading) {
                    Text("ANALYSIS:").custom(font: .bold, size: 16)
                    Text("Analysis goes here")
                        .lineLimit(nil)
                        .multilineTextAlignment(.leading)
                        .fixedSize(horizontal: false, vertical: true)
                        .custom(font: .ultralight, size: 14)
                }
                Spacer()
            }
        }
        .padding(.top, 10)
        .padding(.horizontal, 5)
    }
}

struct DraftPlayerDetailInfoView_Previews: PreviewProvider {
    static var previews: some View {
        DraftPlayerDetailInfoView()
    }
}
