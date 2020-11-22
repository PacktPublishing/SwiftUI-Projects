//
//  NavigationBarView.swift
//  TeslaOrderForm
//
//  Created by Craig Clayton on 2/13/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import Foundation
import SwiftUI

public struct NavigationBarView: ViewModifier {
    @State var isHidden: Bool = false

    public func body(content: Content) -> some View {
        content
            .navigationBarTitle("")
            .navigationBarHidden(isHidden)
            .onAppear { self.isHidden = true }
    }
}

extension View {
    public func hideNavigationBar() -> some View {
        modifier(NavigationBarView())
    }
}
