//: [Previous](@previous)
//: ## ZStack Example 02

import Foundation
import PlaygroundSupport
import UIKit
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)

            Text("Craig Clayton")
                .foregroundColor(.white)

            Text("Craig Clayton")
                .foregroundColor(.white).offset(y: 100)
        }
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: ContentView())
PlaygroundPage.current.needsIndefiniteExecution = true
//: [Next](@next)
