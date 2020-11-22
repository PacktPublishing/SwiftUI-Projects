//: [Previous](@previous)
//: ## ForEach Example

import Foundation
import PlaygroundSupport
import UIKit
import SwiftUI

struct ContentView: View {

    let coworkers = ["Gabe Smallman", "John Brunelle", "Matthew Arieta", "Wayne Ohmer", "Ralph Dugue", "Alex Burnett", "Joshua Delaney", "Craig Heneveld", "Bill Munsell"]

    var body: some View {
        VStack {
            ForEach(coworkers, id: \.self) { name in
                Text(name.uppercased())
            }
        }
        .foregroundColor(.blue)
        .font(.headline)
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: ContentView())
PlaygroundPage.current.needsIndefiniteExecution = true
//: [Next](@next)
