//
//  Model.swift
//  AnimatedLoginSignUP-UIKIT
//
//  Created by Nimish Mothghare on 23/04/25.
//

import Foundation

struct Json4Swift_Base: Codable {
    let code: String?
    let message: String?
    let data: UserData?
    
    enum CodingKeys: String, CodingKey {
        case code = "code"
        case message = "message"
        case data = "data"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        code = try values.decodeIfPresent(String.self, forKey: .code)
        message = try values.decodeIfPresent(String.self, forKey: .message)
        data = try values.decodeIfPresent(UserData.self, forKey: .data)
    }
}

struct UserData: Codable {
    let data: String?
    let iD: Int?
    let caps: Caps?
    let capKey: String?
    let roles: [String]?
    let allcaps: Allcaps?
    let filter: String?
    
    enum CodingKeys: String, CodingKey {
        case data = "data"
        case iD = "ID"
        case caps = "caps"
        case capKey = "cap_key"
        case roles = "roles"
        case allcaps = "allcaps"
        case filter = "filter"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent(String.self, forKey: .data)
        iD = try values.decodeIfPresent(Int.self, forKey: .iD)
        caps = try values.decodeIfPresent(Caps.self, forKey: .caps)
        capKey = try values.decodeIfPresent(String.self, forKey: .capKey)
        roles = try values.decodeIfPresent([String].self, forKey: .roles)
        allcaps = try values.decodeIfPresent(Allcaps.self, forKey: .allcaps)
        filter = try values.decodeIfPresent(String.self, forKey: .filter)
    }
}

struct Caps: Codable {
    let customer: Bool?
    
    enum CodingKeys: String, CodingKey {
        case customer = "customer"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        customer = try values.decodeIfPresent(Bool.self, forKey: .customer)
    }
}

struct Allcaps: Codable {
    let read: Bool?
    let customer: Bool?
    
    enum CodingKeys: String, CodingKey {
        case read = "read"
        case customer = "customer"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        read = try values.decodeIfPresent(Bool.self, forKey: .read)
        customer = try values.decodeIfPresent(Bool.self, forKey: .customer)
    }
}
