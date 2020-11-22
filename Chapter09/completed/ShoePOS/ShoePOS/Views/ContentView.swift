//
//  ContentView.swift
//  ShoePOS
//
//  Created by Craig Clayton on 8/9/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(spacing: -5) {
            ProductsView()
            Spacer()
            CartView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.fixed(width: 1024, height: 768))
    }
}
