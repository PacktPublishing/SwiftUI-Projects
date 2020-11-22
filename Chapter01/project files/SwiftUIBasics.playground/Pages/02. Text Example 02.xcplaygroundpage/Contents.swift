//: [Previous](@previous)
//: ## Text Example 02: Styles

import Foundation
import PlaygroundSupport
import UIKit
import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("This is Text")
            .fontWeight(.bold)
            .font(.system(size: 24))
            .foregroundColor(.red)
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: ContentView())
PlaygroundPage.current.needsIndefiniteExecution = true
//: [Next](@next)
