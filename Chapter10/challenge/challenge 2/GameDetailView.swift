//
//  GameDetailView.swift
//  SportsNews
//
//  Created by Craig Clayton on 7/19/20.
//

import SwiftUI

struct GameDetailView: View {
    var body: some View {
        ZStack {
            Color(.baseGrey)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack(alignment: .leading) {
                    row1
                    row2
                    row3
                    row4
                }.padding()
            }
        }
        .navigationTitle(Text("Toronto vs. Lakers"))
        .navigationBarTitleDisplayMode(.inline)
        .custom(font: .bold, size: 24)
    }
    
    var row1: some View {
        Rectangle()
            .frame(height: 100)
            .cornerRadius(10)
    }
    
    var row2: some View {
        HStack(spacing: 15) {
            VStack {
                HeaderView(title: "SHOT", subtitle: "CHART", showViewAll: false)
                Divider().padding(.bottom, 10)
                Rectangle()
                    .cornerRadius(10)
            }
            .frame(width: 355)
            
            VStack {
                VStack(alignment: .leading, spacing: 5) {
                    VStack(spacing: 0) {
                        HeaderView(title: "TEAM", subtitle: "STATS", showViewAll: false)
                        Divider().padding(.bottom, 10)
                    }
                    
                    Rectangle()
                        .fill(Color.black)
                        .cornerRadius(10)
                        .frame(height: 190)
                }
                
                Rectangle()
                    .fill(Color.black)
                    .cornerRadius(10)
                    .frame(height: 135)
            }
        }
    }
    
    var row3: some View {
        VStack {
            VStack(spacing: 0) {
                HeaderView(title: "BOX", subtitle: "SCORES", showViewAll: false)
                Divider().padding(.bottom, 10)
            }
            
            Rectangle()
                .cornerRadius(10)
                .frame(height: 340)
        }
    }
    
    var row4: some View {
        VStack {
            VStack(spacing: 0) {
                HeaderView(title: "GAME", subtitle: "LEADERS", showViewAll: false)
                Divider().padding(.bottom, 10)
            }
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 235), spacing: 8)]) {
                ForEach(0..<8) { _ in
                    
                    Rectangle()
                        .cornerRadius(10)
                        .frame(height: 80)
                }
            }
        }
    }
}

struct GameDetailView_Previews: PreviewProvider {
    static var previews: some View {
        GameDetailView()
            .previewLayout(.fixed(width: 1187, height: 1100))
    }
}
