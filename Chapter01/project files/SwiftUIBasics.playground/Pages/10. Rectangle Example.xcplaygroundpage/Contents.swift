//: [Previous](@previous)
//: ## Rectangle Example

import Foundation
import PlaygroundSupport
import UIKit
import SwiftUI

struct ContentView: View {
    var body: some View {
        Rectangle()
            .fill(Color.red)
            .frame(width: 50, height: 50)
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: ContentView())
PlaygroundPage.current.needsIndefiniteExecution = true
//: [Next](@next)
