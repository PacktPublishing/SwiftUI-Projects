//
//  AccountListView.swift
//  FinancialApp
//
//  Created by Craig Clayton on 4/19/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct AccountListView: View {
    init() {
        UITableView.appearance().separatorStyle = .none
        UITableViewCell.appearance().backgroundColor = .clear
        UITableView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                List {
                    ForEach(0..<4) { account in
                        HStack {
                            Spacer()
                            
                            NavigationLink(destination: AccountHomeView()) {
                                CardListRow()
                            }.buttonStyle(PlainButtonStyle())
                            
                            Spacer()
                        }.padding()
                    }
                }
            }.navigationBarTitle("Accounts")
        }
    }
}

struct AccountListView_Previews: PreviewProvider {
    static var previews: some View {
        AccountListView()
    }
}
