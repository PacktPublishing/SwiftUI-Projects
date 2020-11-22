//: [Previous](@previous)
//: ## RoundRectangle Example

import Foundation
import PlaygroundSupport
import UIKit
import SwiftUI

struct ContentView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.red)
            .frame(width: 200, height: 25)
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: ContentView())
PlaygroundPage.current.needsIndefiniteExecution = true
//: [Next](@next)
