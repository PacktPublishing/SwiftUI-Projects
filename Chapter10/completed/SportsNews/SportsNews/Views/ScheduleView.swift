//
//  ScheduleView.swift
//  SportsNews
//
//  Created by Craig Clayton on 7/18/20.
//

import SwiftUI

struct ScheduleView: View {
    var body: some View {
        ZStack {
            Color(.baseGrey)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                LazyVStack {
                    Section(header: HeaderView(title: "REGULAR", subtitle: "SEASON", showViewAll: false)) {
                        ForEach(0..<10) { _ in
                            GameItemView()
                                .cornerRadius(10)
                                .frame(height: 74)
                        }
                    }
                    
                    Section(header: HeaderView(title: "POST", subtitle: "SEASON", showViewAll: false)) {
                        ForEach(0..<10) { _ in
                            GameItemView()
                                .cornerRadius(10)
                                .frame(height: 74)
                        }
                    }

                }.padding(.horizontal, 10)
            }
            .navigationTitle(Text("SCHEDULE"))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
            .previewLayout(.fixed(width: 1187, height: 1034))
    }
}
