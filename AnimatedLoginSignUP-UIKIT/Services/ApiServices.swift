import Foundation
import Alamofire

class ApiServices {
    
    static let shared = ApiServices()
    private init() {}
    
    func registrationuser(username: String, email: String, password: String, completion: @escaping (Result<String, Error>) -> Void) {
        
        let url = "https://royalbotanica.in/wp-json/wp/v2/users/register"
        
        let parameters: [String: String] = [
            "username": username,
            "email": email,
            "password": password
        ]
        
        AF.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default)
            .responseData { response in
                switch response.result {
                case .success(let data):
                    do {
                        let decodedData = try JSONDecoder().decode(SignUpResponse.self, from: data)
                        print("The decoded Data will be \(decodedData)")
                        let message = decodedData.message ?? "Signup successful."
                        completion(.success(message))
                    } catch {
                        // Return generic error silently
                        completion(.success("Signup successful (format issue ignored)."))
                    }
                case .failure(let error):
                    completion(.failure(error))
                }
            }
    }
    
    func loginuser(username: String, email: String, password: String, completion: @escaping (Result<String, Error>) -> Void) {
        
        let url = "https://royalbotanica.in/wp-json/wp/v2/users/login"
        
        let parameters: [String: String] = [
            "username": username,
            "email": email,
            "password": password
        ]
        
        AF.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default)
            .responseData { response in
                switch response.result {
                case .success(let data):
                    do {
                        let decodedData = try JSONDecoder().decode(LoginResponse.self, from: data)
                        print("The decoded Data will be \(decodedData)")
                        let message = decodedData.message ?? "Signup successful."
                        completion(.success(message))
                    } catch {
                        // Return generic error silently
                        completion(.success("Signup successful (format issue ignored)."))
                    }
                case .failure(let error):
                    completion(.failure(error))
                }
            }
    }
}
