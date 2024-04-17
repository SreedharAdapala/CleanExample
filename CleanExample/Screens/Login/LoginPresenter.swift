//
//  LoginPresenter.swift
//  CleanExample
//
//  Created by Perennials on 16/04/24.
//

import UIKit

protocol LoginPresentationLogic {
    func presentLogin(response: Login.Login.Response)
}

class LoginPresenter: LoginPresentationLogic {
    weak var viewController: LoginDisplayLogic?

    // MARK: Parse and calc respnse from LoginInteractor and send simple view model to LoginViewController to be displayed

    func presentLogin(response: Login.Login.Response) {
        let username = response.user.name
        let age = response.user.age
        let viewModel = Login.Login.ViewModelSuccess(username: username, age: age)
        viewController?.displayUser(viewModel: viewModel)
    }
}
