//
//  ViewController.swift
//  CleanExample
//
//  Created by Perennials on 15/04/24.
//

import UIKit

class ViewController: UIViewController {

    let loginViewController = LoginViewController()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        guard let storyboard = storyboard else { return }
        
        let loginViewController = storyboard.instantiateViewController(identifier: "loginSegue")
        present(loginViewController, animated: false)
    }
}


