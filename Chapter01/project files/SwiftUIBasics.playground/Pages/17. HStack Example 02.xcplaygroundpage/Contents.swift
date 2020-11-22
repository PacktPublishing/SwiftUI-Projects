//: [Previous](@previous)
//: ## HStack Example 02

import Foundation
import PlaygroundSupport
import UIKit
import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
            Spacer()

            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
            
            Spacer()

            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
        }
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: ContentView())
PlaygroundPage.current.needsIndefiniteExecution = true
//: [Next](@next)
