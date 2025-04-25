//
//  Login.swift
//  AnimatedLoginSignUP-UIKIT
//
//  Created by Nimish Mothghare on 25/04/25.
//

import Foundation

struct LoginResponse: Codable {
    let code: String?
    let message: String?
    let data: UserData?
}
