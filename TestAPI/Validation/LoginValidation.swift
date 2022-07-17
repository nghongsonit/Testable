//
//  LoginValidation.swift
//  TestAPI
//
//  Created by SonNguyen on 18/07/2022.
//

import Foundation

struct LoginValidation {
    
    func validate(request: LoginRequest) -> ValidationResponse {

        guard !request.userEmail.isEmpty  && !request.userPassword.isEmpty else {
            return ValidationResponse(message: "email or password cannot be empty", isValid: false)
        }

        guard request.userEmail.isValidEmail() else {
            return ValidationResponse(message: "email id is invalid", isValid: false)
        }
        
        return ValidationResponse(message: nil, isValid: true)
    }
}
