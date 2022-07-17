//
//  LoginRequest.swift
//  TestAPI
//
//  Created by SonNguyen on 18/07/2022.
//

import Foundation

struct LoginRequest: Encodable {
    let userEmail, userPassword: String
}
