//
//  LastNameView.swift
//  FinancialApp
//
//  Created by Craig Clayton on 10/27/20.
//

import SwiftUI

struct LastNameView: View {
    @State var lastName = "Last Name"
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            HStack(alignment: .center, spacing: 0) {
                Text("LAST NAME")
                .customFont(.custom(.bold, 14))
                .foregroundColor(.basePrussianBlue)

                TextField("Last Name", text: self.$lastName)
                    .multilineTextAlignment(.trailing)
                    .customFont(.custom(.medium, 14))
                    .padding(.trailing, 10)
            }.padding(.horizontal, 0)
        }
        .frame(height: 40)
        .padding(.top, 10)
    }
}

struct FirstNameView: View {
    @State var firstName = "First Name"
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            HStack(alignment: .center, spacing: 0) {
                Text("FIRST NAME")
                .customFont(.custom(.bold, 14))
                .foregroundColor(.basePrussianBlue)

                TextField("First Name", text: $firstName)
                    .multilineTextAlignment(.trailing)
                    .customFont(.custom(.medium, 14))
                    .padding(.trailing, 10)
            }.padding(.horizontal, 0)
        }
        .frame(height: 40)
        .padding(.top, 10)
    }
}

struct CardLimitView: View {
    @State var limit = "Credit Limit"
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            HStack(alignment: .center, spacing: 0) {
                
                Text("CREDIT LIMIT")
                    .customFont(.custom(.bold, 14))
                    .foregroundColor(.basePrussianBlue)

                TextField("Credit Limit", text: $limit, onEditingChanged: { _ in

                }, onCommit: {

                }).multilineTextAlignment(.trailing)
                    .customFont(.custom(.medium, 14))
                    .padding(.trailing, limit == "" ? -5 : 10)

                Button(action: {
                    limit = ""
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .opacity(limit == "" ? 0 : 1)
                        .offset(x: limit == "" ? 35 : 0)
                        .padding(.trailing, limit == "" ? 0 : 5)
                }
            }
            .padding(.horizontal, 0)

            Divider()
        }
        .frame(height: 40)
        .animation(.easeInOut)
        .padding(.top, 10)
    }
}

