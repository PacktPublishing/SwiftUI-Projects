//
//  FormTextField.swift
//  FinancialApp
//
//  Created by Craig Clayton on 6/28/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct FormTextField: View {
    @State private var value = ""
    var text = ""

    var body: some View {
        VStack(alignment: .center, spacing: 10) { // Step 1
            HStack(alignment: .center, spacing: 0) { // Step 2
                Text(text.uppercased())  // Step 3
                    .customFont(.custom(.bold, 14))
                    .foregroundColor(.basePrussianBlue)
                
                TextField(text.uppercased(), text: self.$value, onEditingChanged: { _ in
                }, onCommit: {
                    print("\(value)")

                }).multilineTextAlignment(.trailing)
                    .customFont(.custom(.medium, 14))
                    .padding(.trailing, self.value == "" ? -5 : 10)

                Button(action: {
                    self.value = ""
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .opacity(self.value == "" ? 0 : 1)
                        .offset(x: self.value == "" ? 35 : 0)
                        .padding(.trailing, self.value == "" ? 0 : 5)
                }
            }.padding(.horizontal, 0)
        }
        .frame(height: 40)
        .padding(.top, 10)
    }
}

struct FormTextField_Previews: PreviewProvider {
    static var previews: some View {
        FormTextField(text: "First Name")
                    .previewLayout(.fixed(width: 600, height: 50))

    }
}
