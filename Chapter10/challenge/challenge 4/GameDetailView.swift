//
//  TestView.swift
//  NBATeamApp
//
//  Created by Craig Clayton on 7/11/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct GameDetailView: View {
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack(alignment: .leading) {
                    ScoreboardModuleView()
                   
                    HStack {
                        rec1
                        combined
                    }
                    
                    VStack {
                        rec4
                        grid
                    }
                }.padding()
            }
        }.navigationTitle(Text("Toronto vs. Lakers"))
    }
    
    var rec1: some View {
        VStack(alignment: .leading, spacing: 5) {
            HeaderView(title: "SHOT", subtitle: "CHART", showViewAll: false)
            Divider().padding(.bottom, 10)
            VStack(alignment: .center) {
                tabSelector
            }
            
            Image("chart")
        }
        .frame(width: 355)
    }
    
    var combined: some View {
        VStack {
            rec2
            rec3
        }
    }
    
    var rec2: some View {
        VStack(alignment: .leading, spacing: 5) {
            HeaderView(title: "TEAM", subtitle: "STATS", showViewAll: false)
            Divider().padding(.bottom, 10)
            
            ZStack {
                Rectangle()
                    .fill(Color.white)
                    .cornerRadius(10)
                    .frame(height: 190)
                
                VStack(alignment: .leading, spacing: 0) {
                    Text("STARTERS")
                        .custom(font: .bold, size: 14)
                    Divider().padding(.bottom, 10)
                    
                    ForEach(0..<9) { _ in
                        statItem
                    }
                }.padding(.horizontal, 10)
            }
            Spacer()
        }
    }
    
    var statItem: some View {
        HStack(alignment: .top) {
            Text("Field Goals")
                .custom(font: .demibold, size: 12)
            
            Spacer()
            HStack {
                Text("99-99")
                    .custom(font: .demibold, size: 12)
                Text("99-99")
                    .custom(font: .demibold, size: 12)
            }
        }
    }
    
    var boxItem: some View {
        HStack(alignment: .top) {
            Text("F. Last Name")
                .custom(font: .medium, size: 12)
            
            Spacer()
            HStack(spacing: 40) {
                Text("99")
                    .custom(font: .medium, size: 12)
                Text("99")
                    .custom(font: .medium, size: 12)
                Text("99")
                    .custom(font: .medium, size: 12)
                Text("99")
                    .custom(font: .medium, size: 12)
                Text("99")
                    .custom(font: .medium, size: 12)
                Text("99")
                    .custom(font: .medium, size: 12)
            }
        }.padding(.horizontal, 10)
    }
    
    var pbpItem: some View {
        HStack(alignment: .top) {
            HStack {
                Image("lakers-logo-small")
                    .resizable()
                    .frame(width: 26, height: 20)
                Text("Play description goes here")
                    .custom(font: .demibold, size: 12)
            }
            
            Spacer()
            
            Text("99-99")
                .custom(font: .demibold, size: 12)
        }
    }
    
    var rec3: some View {
        ZStack {
            Rectangle()
                .fill(Color.white)
                .cornerRadius(10)
                .frame(height: 135)
            
            VStack(alignment: .leading, spacing: 0) {
                Text("1st QUARTER")
                    .custom(font: .bold, size: 14)
                Divider().padding(.bottom, 5)
                ForEach(0..<4) { _ in
                    pbpItem
                }
            }.padding(.horizontal, 10)
        }
    }
    
    var tabSelector: some View {
        HStack {
            Text("TORONTO").custom(font: .bold, size: 16)
            Text("|")
            Text("LAKERS").custom(font: .bold, size: 16)
        }.padding(.bottom, 5)
    }
    
    var rec4: some View {
        VStack(spacing: 10) {
            VStack(spacing: 0) {
                HeaderView(title: "BOX", subtitle: "SCORES", showViewAll: false)
                Divider().padding(.bottom, 10)
            }
            
            ZStack {
                Rectangle()
                    .fill(Color.white)
                    .cornerRadius(10)
                    .frame(height: 340)
                
                VStack(spacing: 3) {
                    tabSelector
                    
                    VStack {
                        VStack(alignment: .leading, spacing: 0) {
                            Text("STARTERS").custom(font: .bold, size: 14)
                            Divider()
                        }.padding(.horizontal, 10)
                        
                        VStack(spacing: 2) {
                            ForEach(0..<5) { _ in
                                boxItem
                            }
                        }
                    }.padding(.bottom, 10)
                    
                    VStack {
                        VStack(alignment: .leading, spacing: 0) {
                            Text("BENCH").custom(font: .bold, size: 14)
                            Divider()
                        }.padding(.horizontal, 10)
                        
                        VStack(spacing: 2) {
                            ForEach(0..<7) { _ in
                                boxItem
                            }
                        }
                    }
                }
            }
        }
    }
    
    var grid: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 235), spacing: 8)]) {
            ForEach(0..<8) { _ in
                TeamLeaderItem()
            }
        }
    }
}

struct GameDetailView_Previews: PreviewProvider {
    static var previews: some View {
        GameDetailView()
            .previewLayout(.fixed(width: 1187, height: 834))
    }
}
