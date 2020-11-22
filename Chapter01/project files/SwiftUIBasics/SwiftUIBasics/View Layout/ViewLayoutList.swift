//
//  ViewLayoutList.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/3/20.
//

import SwiftUI

struct ViewLayoutList: View {
    var body: some View {
        List {
            Text("1")
            Text("2")
            Text("3")
        }
    }
}


struct ViewLayoutList_Previews: PreviewProvider {
    static var previews: some View {
        ViewLayoutList()
    }
}
