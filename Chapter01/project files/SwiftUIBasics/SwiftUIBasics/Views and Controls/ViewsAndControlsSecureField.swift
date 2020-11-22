//
//  ViewsAndControlsSecureField.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 9/29/20.
//

import SwiftUI

struct ViewsAndControlsSecureField: View {
    @State private var password = ""

        var body: some View {
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }

}

struct ViewsAndControlsSecureField_Previews: PreviewProvider {
    static var previews: some View {
        ViewsAndControlsSecureField()
    }
}
