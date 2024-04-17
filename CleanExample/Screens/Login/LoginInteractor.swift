//
//  LoginInteractor.swift
//  CleanExample
//
//  Created by Perennials on 15/04/24.
//

import UIKit

protocol LoginBusinessLogic {
    func login(request: Login.Login.Request)
}

class LoginInteractor: LoginBusinessLogic {
    var presenter: LoginPresentationLogic?

    // MARK: Login (and send response to LoginPresenter)

    func login(request: Login.Login.Request) {
        
        // for our example, lets build a user which this Interactor received from server
        let userResponse = User(name: "Capitan Jack Sparrow",
                                id: "135735",
                                firstName: "Jacky",
                                lastName: "Sparrow",
                                email: "jacky.sparrow@piratesOfTheCaribbean.com",
                                phone_number: "+972-549-424-420",
                                age: 31,
                                facebookLink: "https://www.facebook.com/CaptainJackSparrow",
                                token: "af47e509r678fuyhjv",
                                isInRelationship: false)

        let response = Login.Login.Response(user: userResponse)
        presenter?.presentLogin(response: response)
    }
}
