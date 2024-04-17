//
//  LoginModels.swift
//  CleanExample
//
//  Created by Perennials on 15/04/24.
//

import UIKit

enum Login
{
    // MARK: Use cases

    enum Login {
        struct Request {
            let username, password: String
        }

        struct Response{
            let user: User
        }

        struct ViewModelSuccess{
            let username: String
            let age: Int
        }
        
        struct ViewModelFailure{
            let errorMessage: String
        }
    }
}



