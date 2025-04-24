//
//  ApiServices.swift
//  AnimatedLoginSignUP-UIKIT
//
//  Created by Nimish Mothghare on 23/04/25.
//

import Foundation
import Alamofire


class ApiServices {
    
    
    static let shared = ApiServices()
    
    private init() {}
    
    
    func registrationuser(username:String,email:String,password:String, completion: @escaping (Result <String, Error> ) -> Void) {
        
        let url = "https://royalbotanica.in/wp-json/wp/v2/users/register"
        
        let parameters: [String: String] = [
            "username": username,
            "email": email,
            "password": password
        ]
        
        
        AF.request(url,method: .post,parameters: parameters,encoding: JSONEncoding.default)
            .responseDecodable(of: SignUpResponse.self) { response in
                
                
                
                switch response.result {
                    
                case .success(let registrationresponse):
                    completion(.success(registrationresponse.message!))
                case .failure(let error):
                    completion(.failure(error))

                }
                
                
            }
        
    }


    
}


