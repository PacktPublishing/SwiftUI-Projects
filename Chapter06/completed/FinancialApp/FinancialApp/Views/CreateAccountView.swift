//
//  CreateAccountView.swift
//  FinancialApp
//
//  Created by Craig Clayton on 6/28/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct CreateAccountView: View {
    
    var body: some View {
        ZStack {
            Color(.baseWhite)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                header
                ScrollView {
                    main
                }
            }
        }
    }
}

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountView()
    }
}

private extension CreateAccountView {
    var header: some View {
        VStack(spacing: -8) {
            Text("CREATE AN ACCOUNT")
                .foregroundColor(.basePrussianBlue)
                .customFont(.custom(.bold, 24))
            
            Text("Add a new account")
                .foregroundColor(.baseDustyGray)
                .customFont(.custom(.demibold, 16))
        }.padding(.bottom, 20)
    }
    
    var createAccountBtn: some View {
        Button(action: { }) {
            ZStack {
                Text("CREATE ACCOUNT")
                    .customFont(.custom(.bold, 22))
                    .frame(width: 294, height: 34)
                    .background(Color.basePrussianBlue)
                    .cornerRadius(4)
                    .foregroundColor(.white)
                
                RoundedRectangle(cornerRadius: 6)
                    .stroke(lineWidth: 2)
                    .foregroundColor(.basePrussianBlue)
                    .frame(width: 300, height: 40)
            }
        }.padding(.top, 50)
        .padding(.bottom, 20)
    }
    
    var accountSelector: some View {
        VStack {
            VStack(alignment: .leading, spacing: 3) {
                Text("SELECT AN ACCOUNT TYPE")
                    .customFont(.custom(.bold, 18))
                    .foregroundColor(.basePrussianBlue)
                    .padding(.leading, 10)
                
                Divider()
            }.padding(.top, 15)
            
            HStack(alignment: .center) {
                AccountTypeView()
                Spacer()
            }.padding(.leading, 10)
        }
    }
    
    var main: some View {
        ScrollView {
            VStack {
                accountSelector
                AccountFormView()
                VStack {
                    CreditCardTypeMenuView()
                    CardView().padding(.vertical, 20)
                    ColorButtonMenu()
                    Spacer()
                }.padding(.top, 0)
                
                createAccountBtn
            }
        }
    }
}
