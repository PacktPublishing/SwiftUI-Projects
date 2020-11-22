//
//  ContentView.swift
//  Example
//
//  Created by Craig Clayton on 10/2/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.gray.edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading) {
                title
                chart
                viewmore
            }
            .background(Color.white)
            .cornerRadius(20)
            .padding(10)
        }
    }
    
    var title: some View {
        VStack(alignment: .leading) {
            Text("Order activity")
                .font(.largeTitle).bold()
            Text("this year")
                .font(.subheadline).bold()
            
        }.padding()
    }
    
    var viewmore: some View {
        HStack {
            Spacer()
            Text("View more insights")
                .foregroundColor(.blue)
            Spacer()
        }.padding(.top, 50)
        .padding(.bottom, 30)
    }
    
    var chart: some View {
        HStack(alignment: .bottom) {
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom)) {
                
                VStack(spacing: 65) {
                    Rectangle().frame(height: 1)
                    Rectangle().frame(height: 1)
                    Rectangle().frame(height: 1)
                    Rectangle().frame(height: 1)
                }
                
                HStack(alignment: .bottom, spacing: 10) {
                    RoundedRectangle(cornerRadius: 12).fill(Color.blue).frame(width: 15, height: 100)
                    
                    RoundedRectangle(cornerRadius: 12).fill(Color.blue).frame(width: 15, height: 160)
                    
                    RoundedRectangle(cornerRadius: 12).fill(Color.blue).frame(width: 15, height: 50)
                    
                    RoundedRectangle(cornerRadius: 12).fill(Color.blue).frame(width: 15, height: 120)
                    
                    RoundedRectangle(cornerRadius: 12).fill(Color.blue).frame(width: 15, height: 30)
                }.padding(.horizontal)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
