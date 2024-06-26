//
//  Loginrouter.swift
//  CleanExample
//
//  Created by Perennials on 16/04/24.
//

import UIKit

protocol LoginRoutingLogic {
    func routeToNextScreen(segue: UIStoryboardSegue?)
}

class LoginRouter: NSObject, LoginRoutingLogic {
    weak var viewController: LoginViewController?

    // MARK: Routing (navigating to other screens)

    func routeToNextScreen(segue: UIStoryboardSegue?) {
//        if let segue = segue {
//            let destinationVC = segue.destination as! SomewhereViewController
//            var destinationDS = destinationVC.router!.dataStore!
//            passDataToSomewhere(source: dataStore!, destination: &destinationDS)
//        } else {
//            let storyboard = UIStoryboard(name: "Main", bundle: nil)
//            let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
//            var destinationDS = destinationVC.router!.dataStore!
//            passDataToSomewhere(source: dataStore!, destination: &destinationDS)
//            navigateToSomewhere(source: viewController!, destination: destinationVC)
//        }
    }

    // MARK: Navigation to other screen

//    func navigateToSomewhere(source: LoginViewController, destination: SomewhereViewController) {
//        source.show(destination, sender: nil)
//    }

    // MARK: Passing data to other screen

//    func passDataToSomewhere(source: LoginDataStore, destination: inout SomewhereDataStore) {
//        destination.name = source.name
//    }
}
