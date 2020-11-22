//
//  CustomNavigationBar.swift
//  SportsNewApp
//
//  Created by Craig Clayton on 7/17/20.
//

import UIKit
import SwiftUI

struct CustomNavigationBar: UIViewControllerRepresentable {

    var build: (UINavigationController) -> Void = { _ in }

    func makeUIViewController(context: UIViewControllerRepresentableContext<CustomNavigationBar>) -> UIViewController {
        UIViewController()
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<CustomNavigationBar>) {

        if let navigationController = uiViewController.navigationController {
            self.build(navigationController)
        }
    }
}
