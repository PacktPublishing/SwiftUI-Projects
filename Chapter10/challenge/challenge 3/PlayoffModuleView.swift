//
//  PlayoffModuleHeaderView.swift
//  SportsNewApp
//
//  Created by Craig Clayton on 7/18/20.
//

import SwiftUI

struct PlayoffModuleHeaderView: View {
    var body: some View {
        playoffbox
    }
    
    var playoffbox: some View {
        ZStack {
            Rectangle()
                .fill(Color.white)
                .frame(width: 320, height: 168)
                .cornerRadius(8)
            Image("playoff-lines")
            
            finalsBracket
            westFinals
            eastFinals
        }
    }
    
    var finalsBracket: some View {
        ZStack {
            Rectangle()
                .fill(Color(.baseGrey))
                .frame(width: 150, height: 50)
                .cornerRadius(10)
            Image("divider")
                .resizable()
                .frame(width: 150, height: 0.5)
            
            VStack(spacing: -5) {
                HStack {
                    ZStack {
                        Text("TOR")
                            .custom(font: .bold, size: 24)
                            .foregroundColor(.white)
                            .offset(y: 3)
                        Image("raptors-logo")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .offset(y: 2)
                    }
                    Spacer()
                    Text("0").custom(font: .bold, size: 18)
                }
                
                HStack {
                    ZStack {
                        Text("LAL")
                            .custom(font: .bold, size: 24)
                            .foregroundColor(.white)
                        
                        Image("lakers-logo")
                            .resizable()
                            .frame(width: 23, height: 15)
                            .offset(y: -2)
                    }
                    Spacer()
                    Text("0")
                        .custom(font: .bold, size: 18)
                }
            }.padding(.trailing, 5)
            .frame(width: 145)
        }
        .offset(y: -45)
    }
    
    var westFinals: some View {
        ZStack {
            Rectangle()
                .fill(Color(.baseGrey))
                .frame(width: 150, height: 50)
                .cornerRadius(10)
            Image("divider")
                .resizable()
                .frame(width: 150, height: 0.5)
            
            VStack(spacing: -5) {
                HStack {
                    ZStack {
                        Text("TOR")
                            .custom(font: .bold, size: 24)
                            .foregroundColor(.white)
                            .offset(y: 3)
                        Image("raptors-logo")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .offset(y: 2)
                    }
                    Spacer()
                    Text("0").custom(font: .bold, size: 18)
                }
                
                HStack {
                    ZStack {
                        Text("LAL")
                            .custom(font: .bold, size: 24)
                            .foregroundColor(.white)
                        
                        Image("lakers-logo")
                            .resizable()
                            .frame(width: 23, height: 15)
                            .offset(y: -2)
                    }
                    Spacer()
                    Text("0")
                        .custom(font: .bold, size: 18)
                }
            }.padding(.trailing, 5)
            .frame(width: 145)
        }
        .offset(x: -80, y: 45)
    }
    
    var eastFinals: some View {
        ZStack {
            Rectangle()
                .fill(Color(.baseGrey))
                .frame(width: 150, height: 50)
                .cornerRadius(10)
            Image("divider")
                .resizable()
                .frame(width: 150, height: 0.5)
            
            VStack(spacing: -5) {
                HStack {
                    ZStack {
                        Text("TOR")
                            .custom(font: .bold, size: 24)
                            .foregroundColor(.white)
                            .offset(y: 3)
                        Image("raptors-logo")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .offset(y: 2)
                    }
                    Spacer()
                    Text("0").custom(font: .bold, size: 18)
                }
                
                HStack {
                    ZStack {
                        Text("LAL")
                            .custom(font: .bold, size: 24)
                            .foregroundColor(.white)
                        
                        Image("lakers-logo")
                            .resizable()
                            .frame(width: 23, height: 15)
                            .offset(y: -2)
                    }
                    Spacer()
                    Text("0")
                        .custom(font: .bold, size: 18)
                }
            }.padding(.trailing, 5)
            .frame(width: 145)
        }
        .offset(x: 80, y: 45)
    }
}

struct PlayoffModuleHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        PlayoffModuleHeaderView()
    }
}
