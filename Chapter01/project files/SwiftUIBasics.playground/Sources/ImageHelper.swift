import Foundation
import UIKit
import SwiftUI

var image: Image {
    guard let img = UIImage(named: "lebron-james-full") else {
        fatalError("Unable to load image")
    }

    return Image(uiImage: img)
}
