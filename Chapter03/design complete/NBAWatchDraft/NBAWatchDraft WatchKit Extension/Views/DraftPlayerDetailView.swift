//
//  DraftPlayerDetailView.swift
//  NBAWatchDraft WatchKit Extension
//
//  Created by Craig Clayton on 12/21/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct DraftPlayerDetailView: View {
    var body: some View {
        ScrollView {
            VStack(alignment:.leading, spacing: 0) {
                header
                stats
                info
            }
        }
    }
    
    var header: some View {
        VStack(spacing: -35) { // Step 2
            HStack(alignment:.top, spacing: 0) { // Step 3
                Text("1")
                    .custom(font: .ultralight, size: 19)
                    .offset(x: -2, y: 15)
                Text(String(format: "%02d", 1))
                    .custom(font: .bold, size: 70)
            }
            .padding(.leading, 12)
            .offset(x: -45, y: -17)

            VStack(spacing: -1) { // Step 1
                HStack { // Step 2
                    Image("pelicans").offset(x: 29) // Step 3
                    Image("zion-williamson").offset(x:0, y: -25)
                }
                .frame(height: 58)
                .frame(minWidth: 0, maxWidth: .infinity)
                .background(Color("pelicans"))

                VStack(spacing: -5) { // Step 4
                    Text("ZION") // Step 5
                        .custom(font: .ultralight, size: 13)
                    Text("WILLIAMSON")
                        .custom(font: .bold, size: 20)
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                .background(Color.white)
                .foregroundColor(.black)
            }
        }
    }

    var info: some View {
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

    var stats: some View {
        HStack {
            ForEach(0..<4) { _ in
                HStack {
                    Spacer(minLength: 4)
                    VStack {
                        Text("PTS")
                            .custom(font: .bold, size: 12)
                            .offset(y: 1)
                        Text("99.9")
                            .custom(font: .ultralight, size: 18)
                    }
                    .background(Image("stat-bg-small"))
                    Spacer(minLength: 4)
                }
            }
        }
        .padding(.top, 10)
        .padding(.horizontal, 5)
    }
}

struct DraftPlayerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DraftPlayerDetailView()
    }
}





//
//VStack(spacing: -1) {
//    // 2
//    HStack {
//        // 3
//        Image("pelicans").offset(x: 29)
//        Image("zion-williamson").offset(x:0, y: -25)
//    }
//    .frame(height: 58)
//    .frame(minWidth: 0, maxWidth: .infinity)
//    .background(Color("pelicans"))
//
//    // 4
//    VStack(spacing: -5) {
//        // 5
//        Text("ZION")
//            .custom(font: .ultralight, size: 13)
//        Text("WILLIAMSON")
//            .custom(font: .bold, size: 20)
//    }
//    .frame(minWidth: 0, maxWidth: .infinity)
//    .background(Color.white)
//    .foregroundColor(.black)
//}
