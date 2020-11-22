//: [Previous](@previous)
//: ## ScrollView Example 02

import Foundation
import PlaygroundSupport
import UIKit
import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 15) {
                ForEach(0..<10) { _ in
                    Rectangle()
                        .frame(width: 50, height: 50)
                }
            }
        }
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: ContentView())
PlaygroundPage.current.needsIndefiniteExecution = true
//: [Next](@next)
