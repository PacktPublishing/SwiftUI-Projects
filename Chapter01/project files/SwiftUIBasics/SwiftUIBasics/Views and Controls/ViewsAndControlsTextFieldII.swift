//
//  ViewsAndControlsTextFieldII.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 9/29/20.
//

import SwiftUI

struct ViewsAndControlsTextFieldII: View {
    @State private var username = ""

    var body: some View {
        TextField("Username", text: $username)
            .textFieldStyle(RoundedBorderTextFieldStyle())
    }
}

struct ViewsAndControlsTextFieldII_Previews: PreviewProvider {
    static var previews: some View {
        ViewsAndControlsTextFieldII()
    }
}
