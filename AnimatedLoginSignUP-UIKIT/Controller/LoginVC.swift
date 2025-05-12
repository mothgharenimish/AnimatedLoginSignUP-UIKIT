//
//  LoginVC.swift
//  AnimatedLoginSignUP-UIKIT
//
//  Created by Nimish Mothghare on 22/04/25.
//

import UIKit
import IBAnimatable
import CDAlertView

class LoginVC: UIViewController {
    
    //MARK: -IBOutlet
    @IBOutlet weak var loginView: AnimatableView!
    @IBOutlet weak var emailtxtField: AnimatableTextField!
    @IBOutlet weak var passwordtxtField: AnimatableTextField!
    @IBOutlet weak var usernametxtField: AnimatableTextField!
    @IBOutlet weak var loginBtn: AnimatableButton!
    @IBOutlet weak var accountLbl: AnimatableLabel!
    @IBOutlet weak var signupBtn: AnimatableButton!
    var alertshow : Bool = false
    //MARK: -View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        loginView.animate(.compound(animations: .init(arrayLiteral: .slideFade(way: .in, direction: .down)), run: .parallel))
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            print("Code executed after 2 seconds")
            
            
            self.usernametxtField.animate(.compound(animations: .init(arrayLiteral: .slide(way: .in, direction: .left)), run: .parallel))
            
            
            self.emailtxtField.animate(.compound(animations: .init(arrayLiteral: .slide(way: .in, direction: .left)), run: .parallel))
            
            
            self.passwordtxtField.animate(.compound(animations: .init(arrayLiteral: .slide(way: .in, direction: .left)), run: .parallel))
            
            self.loginBtn.animate(.compound(animations: .init(arrayLiteral: .slide(way: .in, direction: .left)), run: .parallel))
            
            self.accountLbl.animate(.compound(animations: .init(arrayLiteral: .slide(way: .in, direction: .left)), run: .parallel))
            
            self.signupBtn.animate(.compound(animations: .init(arrayLiteral: .slide(way: .in, direction: .left)), run: .parallel))
            
            
            
        }
        
    }
    
    
    //MARK: -View Will Appear
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        loginView.animate(.compound(animations: .init(arrayLiteral: .slideFade(way: .in, direction: .down)), run: .parallel))
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            print("Code executed after 2 seconds")
            
            
            self.usernametxtField.animate(.compound(animations: .init(arrayLiteral: .slide(way: .in, direction: .left)), run: .parallel))
            
            
            self.emailtxtField.animate(.compound(animations: .init(arrayLiteral: .slide(way: .in, direction: .left)), run: .parallel))
            
            
            self.passwordtxtField.animate(.compound(animations: .init(arrayLiteral: .slide(way: .in, direction: .left)), run: .parallel))
            
            self.loginBtn.animate(.compound(animations: .init(arrayLiteral: .slide(way: .in, direction: .left)), run: .parallel))
            
            self.accountLbl.animate(.compound(animations: .init(arrayLiteral: .slide(way: .in, direction: .left)), run: .parallel))
            
            self.signupBtn.animate(.compound(animations: .init(arrayLiteral: .slide(way: .in, direction: .left)), run: .parallel))
            
            
            
        }
        
    }
    
    
    //MARK: -SignIn IBAction
    @IBAction func signInaction(_ sender: UIButton) {
        
        
        if usernametxtField.text!.isEmpty {
            
            print("The Username text field is Empty")
            
            
            shownaviagtionAlert(title: "Missing Username", message: "Please Enter a Username")
            
            
            
        }
        
        else if emailtxtField.text!.isEmpty {
            
            shownaviagtionAlert(title: "Missing Email Address", message: "Please Enter an Email Address")
            
        }
        
        else if passwordtxtField.text!.isEmpty {
            
            shownaviagtionAlert(title: "Missing Password", message: "Please Enter a Password")
            
        }
        
        else {
            let username = usernametxtField.text!
            let email = emailtxtField.text!
            let password = passwordtxtField.text!
            
            ApiServices.shared.loginuser(username: username, email: email, password: password) { result in
                DispatchQueue.main.async {
                    switch result {
                    case .success(let message):
                        self.shownaviagtionAlert(title: "Login", message: "Login Successfull")
                            
                          
                        
                    case .failure(let error):
                        
                        
                        print("The error while doing the Login \(error)")
                     
                    }
                }
            }
        }
        
        
    }
    
    //MARK: -SignUp IBAction
    @IBAction func signupAction(_ sender: UIButton) {
        
        
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SignUpVC") as? SignUpVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}
