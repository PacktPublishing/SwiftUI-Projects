//
//  ViewsAndControlsTextFieldI.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 9/29/20.
//

import SwiftUI

struct ViewsAndControlsTextFieldI: View {
    @State private var username = ""

    var body: some View {
        TextField("Username", text: $username)
    }
}

struct ViewsAndControlsTextFieldI_Previews: PreviewProvider {
    static var previews: some View {
        ViewsAndControlsTextFieldI()
    }
}
