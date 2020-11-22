//: [Previous](@previous)
//: ## ZStack Example 01

import Foundation
import PlaygroundSupport
import UIKit
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black

            Text("Craig Clayton")
                .foregroundColor(.white)
        }
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: ContentView())
PlaygroundPage.current.needsIndefiniteExecution = true
//: [Next](@next)
