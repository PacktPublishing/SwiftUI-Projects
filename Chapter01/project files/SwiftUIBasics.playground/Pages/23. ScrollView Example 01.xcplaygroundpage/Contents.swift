//: [Previous](@previous)
//: ## ScrollView Example 01

import Foundation
import PlaygroundSupport
import UIKit
import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            HStack(spacing: 15) {
                ForEach(0..<10) { _ in
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 50, height: 50)
                }
            }
        }
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: ContentView())
PlaygroundPage.current.needsIndefiniteExecution = true
//: [Next](@next)
