//: [Previous](@previous)
//: ## SecureField Example

import Foundation
import PlaygroundSupport
import UIKit
import SwiftUI

struct ContentView: View {
    @State private var password = ""

    var body: some View {
        SecureField("Password", text: $password)
            .textFieldStyle(RoundedBorderTextFieldStyle())
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: ContentView())
PlaygroundPage.current.needsIndefiniteExecution = true
//: [Next](@next)
