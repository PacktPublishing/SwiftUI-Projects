//
//  ContentView.swift
//  FinancialApp
//
//  Created by Craig Clayton on 12/23/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var model: CreateAccountViewModel
    
    var body: some View {
        ZStack {
            CreateAccountView()
            
            if model.hasAccounts() {
                AccountListView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(CreateAccountViewModel()) // (1)
    }
}
