//
//  StandingItem.swift
//
//
//  Created by Craig Clayton on 11/17/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct StandingItem: View {
    var body: some View {
        HStack {
            HStack {
                ZStack {
                    VStack(alignment: .leading)  {
                        Text("-")
                            .custom(font: .medium, size: 14)
                    }
                }
                .frame(maxWidth: 10)
                .frame(height: 20)
                
                ZStack {
                    Text("Team Name")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .multilineTextAlignment(.leading)
                        .custom(font: .medium, size: 14)
                        .foregroundColor(.black)
                }
                .frame(minWidth: 80)
                .frame(height: 20)
            }
            
            HStack {
                ZStack {
                    Text("99-99")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .multilineTextAlignment(.center)
                        .custom(font: .medium, size: 14)
                        .foregroundColor(.black)
                }
                .frame(minWidth: 40)
                .frame(height: 20)
                
                ZStack {
                    Text(".999")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .multilineTextAlignment(.center)
                        .custom(font: .medium, size: 14)
                        .foregroundColor(.black)
                }
                .frame(minWidth: 35)
                .frame(height: 20)
                
                ZStack {
                    Text("99")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .multilineTextAlignment(.center)
                        .custom(font: .medium, size: 14)
                        .foregroundColor(.black)
                }
                .frame(minWidth: 20)
                .frame(height: 20)
            }
        }
    }
}

struct StandingItem_Previews: PreviewProvider {
    static var previews: some View {
        StandingItem()
    }
}
