//
//  AccountListView.swift
//  FinancialApp
//
//  Created by Craig Clayton on 4/19/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct AccountListView: View {
    @FetchRequest(fetchRequest: Account.accountFetchRequest)
    var accounts: FetchedResults<Account>

    @State var showCreateAccountScreen = false
    let model = CreateAccountViewModel()
    
    init() {
        UITableView.appearance().separatorStyle = .none
        UITableViewCell.appearance().backgroundColor = .clear
        UITableView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                VStack(alignment: .center, spacing: 40) {
                    ForEach(accounts) { account in
                        NavigationLink(destination: AccountHomeView(account: account)) {
                            CardListRow(account: account)
                        }.buttonStyle(PlainButtonStyle())
                    }
                }
            }
            .navigationBarTitle("Accounts")
            .sheet(isPresented: $showCreateAccountScreen) {
                CreateAccountView().environmentObject(self.model)
            }
            .navigationBarItems(trailing:
                Button(action: {
                    self.showCreateAccountScreen.toggle()
                }) {
                    Text("Add New")
                }
            )
        }
    }
}

struct AccountListView_Previews: PreviewProvider {
    static var previews: some View {
        AccountListView()
            .environment(\.managedObjectContext, MockAccountPreviewService.moc)
    }
}
