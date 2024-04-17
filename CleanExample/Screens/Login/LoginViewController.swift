//
//  LoginViewcontroller.swift
//  CleanExample
//
//  Created by Perennials on 16/04/24.
//

import UIKit

protocol LoginDisplayLogic: AnyObject
{
    func displayUser(viewModel: Login.Login.ViewModelSuccess)
    func displayFailure(viewModel: Login.Login.ViewModelFailure)
}

class LoginViewController: UIViewController, LoginDisplayLogic {

    private enum Segue: String {
        case homeSegue
    }

    var interactor: LoginBusinessLogic?
    var router: (NSObjectProtocol & LoginRoutingLogic)?

    // MARK: Object lifecycle

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        modalPresentationStyle = .fullScreen
        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        modalPresentationStyle = .fullScreen
        setup()
    }
            
    // MARK: - Setup Clean Code Design Pattern 

    private func setup() {
        let viewController = self
        let interactor = LoginInteractor()
        let presenter = LoginPresenter()
        let router = LoginRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
    }
   
    //MARK: - receive events from UI
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        login()
    }

    // MARK: - request data from LoginInteractor

    func login() {
        let request = Login.Login.Request(username: "Captain Jack Sparrow", password: "123456")
        interactor?.login(request: request)
    }

    // MARK: - display view model from LoginPresenter

    func displayUser(viewModel: Login.Login.ViewModelSuccess) {
        performSegue(withIdentifier: Segue.homeSegue.rawValue, sender: self)
    }

    func displayFailure(viewModel: Login.Login.ViewModelFailure) {
        // display error message
    }
}
