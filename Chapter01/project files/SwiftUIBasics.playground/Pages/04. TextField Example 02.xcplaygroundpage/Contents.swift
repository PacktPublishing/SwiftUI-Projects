//: [Previous](@previous)
//: ## TextField Example 02

import Foundation
import PlaygroundSupport
import UIKit
import SwiftUI

struct ContentView: View {
    @State private var username = ""

    var body: some View {
        TextField("Username", text: $username)
            .textFieldStyle(RoundedBorderTextFieldStyle())
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: ContentView())
PlaygroundPage.current.needsIndefiniteExecution = true
//: [Next](@next)
