//: [Previous](@previous)
//: ## Button Example 02: Styles

import Foundation
import PlaygroundSupport
import UIKit
import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: { print("Button tapped") }) {
            Text("Button Label")
        }
        .padding(10)
        .background(Color.red)
        .foregroundColor(.white)
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: ContentView())
PlaygroundPage.current.needsIndefiniteExecution = true
//: [Next](@next)
