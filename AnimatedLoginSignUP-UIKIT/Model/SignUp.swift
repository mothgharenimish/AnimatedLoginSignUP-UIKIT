import Foundation

struct SignUpResponse: Codable {
    let code: String?
    let message: String?
    let data: UserData?
}

struct UserData: Codable {
    let userDetails: UserDetails?
    let id: Int?
    let caps: Caps?
    let capKey: String?
    let roles: [String]?
    let allcaps: Allcaps?
    let filter: String?

    enum CodingKeys: String, CodingKey {
        case userDetails = "data" // nested user data object
        case id = "ID"
        case caps
        case capKey = "cap_key"
        case roles
        case allcaps
        case filter
    }
}

struct UserDetails: Codable {
    let id: String?
    let userLogin: String?
    let userPass: String?
    let userNicename: String?
    let userEmail: String?
    let userUrl: String?
    let userRegistered: String?
    let userActivationKey: String?
    let userStatus: String?
    let displayName: String?

    enum CodingKeys: String, CodingKey {
        case id = "ID"
        case userLogin = "user_login"
        case userPass = "user_pass"
        case userNicename = "user_nicename"
        case userEmail = "user_email"
        case userUrl = "user_url"
        case userRegistered = "user_registered"
        case userActivationKey = "user_activation_key"
        case userStatus = "user_status"
        case displayName = "display_name"
    }
}

struct Caps: Codable {
    let customer: Bool?
}

struct Allcaps: Codable {
    let read: Bool?
    let customer: Bool?
}
