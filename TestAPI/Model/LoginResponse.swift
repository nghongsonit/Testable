//
//  LoginResponse.swift
//  TestAPI
//
//  Created by SonNguyen on 18/07/2022.
//

import Foundation

struct LoginResponse : Codable {

    let errorMessage: String?
    let data: LoginResponseData?
}

struct LoginResponseData : Codable
{
    let userName: String
    let userID: Int
    let email: String

    enum CodingKeys: String, CodingKey {
        case userName
        case userID = "userId"
        case email
    }
}
