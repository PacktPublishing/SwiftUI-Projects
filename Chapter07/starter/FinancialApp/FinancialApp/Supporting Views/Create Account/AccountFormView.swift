//
//  AccountFormView.swift
//  FinancialApp
//
//  Created by Craig Clayton on 6/28/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct AccountFormView: View {
    @State var firstName = "First Name"
    @State var lastName = "Last Name"
    @State var creditLimit = "Credit Limit"

    private let type = "creditcard"
    
    init() {
        UITableView.appearance().backgroundColor = UIColor.baseWhite
        UITableView.appearance().tableFooterView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: Double.leastNonzeroMagnitude))
        UITableView.appearance().tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: Double.leastNonzeroMagnitude))
        UITableView.appearance().separatorStyle = .none
    }


    var body: some View {
        List { // Step 1
            Section { // Step 2
                FormTextField(text: firstName)
                FormTextField(text: lastName)
                
                if type == "creditcard" { // Step 3
                    FormTextField(text: creditLimit)
                }
            }
            .listRowBackground(Color.baseWhite)
            .listRowInsets(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
        }
        .listStyle(GroupedListStyle())
        .background(Color.baseWhite)

    }
}

struct AccountFormView_Previews: PreviewProvider {
    static var previews: some View {
        AccountFormView()
            .previewLayout(.fixed(width: 600, height: 200))
    }
}

extension AccountFormView {
    
}
