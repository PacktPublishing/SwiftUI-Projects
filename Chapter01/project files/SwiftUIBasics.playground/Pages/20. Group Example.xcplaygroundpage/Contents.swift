//: [Previous](@previous)
//: ## Group Example

import Foundation
import PlaygroundSupport
import UIKit
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Group {
                Text("Gabe Smallman")
                Text("John Brunelle")
                Text("Matthew Arieta")
                Text("Ralph Dugue")
            }
            .foregroundColor(.red)
            .font(.largeTitle)

            Group {
                Text("Alex Burnett")
                Text("Joshua Delaney")
                Text("Craig Heneveld")
                Text("Bill Munsell")
                Text("Wayne Ohmer")
            }
            .foregroundColor(.blue)
            .font(.largeTitle)
        }
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: ContentView())
PlaygroundPage.current.needsIndefiniteExecution = true
//: [Next](@next)
