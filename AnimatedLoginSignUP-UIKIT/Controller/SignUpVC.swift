//
//  SignUpVC.swift
//  AnimatedLoginSignUP-UIKIT
//
//  Created by Nimish Mothghare on 23/04/25.
//

import UIKit
import IBAnimatable
import CDAlertView

class SignUpVC: UIViewController {
    
    //MARK: -IBOutlet
    @IBOutlet weak var signupView: AnimatableView!
    @IBOutlet weak var usernametxtField: AnimatableTextField!
    @IBOutlet weak var emailtxtField: AnimatableTextField!
    @IBOutlet weak var passwordtxtField: AnimatableTextField!
    @IBOutlet weak var signupBtn: AnimatableButton!
    @IBOutlet weak var accountLbl: AnimatableLabel!
    @IBOutlet weak var signInBtn: AnimatableButton!
    
    
    
    
    //MARK: -View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.signupView.animate(.compound(animations: .init(arrayLiteral: .slideFade(way: .in, direction: .down)), run: .parallel))
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            print("Code executed after 2 seconds")
            
            self.usernametxtField.animate(.compound(animations: .init(arrayLiteral: .slide(way: .in, direction: .left)), run: .parallel))
            
            
            self.emailtxtField.animate(.compound(animations: .init(arrayLiteral: .slide(way: .in, direction: .left)), run: .parallel))
            
            self.passwordtxtField.animate(.compound(animations: .init(arrayLiteral: .slide(way: .in, direction: .left)), run: .parallel))
            
            self.signupBtn.animate(.compound(animations: .init(arrayLiteral: .slide(way: .in, direction: .left)), run: .parallel))
            
            self.accountLbl.animate(.compound(animations: .init(arrayLiteral: .slide(way: .in, direction: .left)), run: .parallel))
            
            self.signInBtn.animate(.compound(animations: .init(arrayLiteral: .slide(way: .in, direction: .left)), run: .parallel))
            
            
            
        }
        
    }
    
    //MARK: -SignUp IBAction
    @IBAction func signupAction(_ sender: UIButton) {
        
        if usernametxtField.text!.isEmpty {
            
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
            
            ApiServices.shared.registrationuser(username: username, email: email, password: password) { result in
                DispatchQueue.main.async {
                    switch result {
                    case .success(let message):
                        
                        self.shownaviagtionAlert(title: "SignUp", message: "SignUp Successfully", completion: {
                            
                            self.navigationController?.popViewController(animated: true)
                            
                            
                        })
                        
                    case .failure(let error):
                        
                        print("The error while doing the SignUp \(error)")
                       
                    }
                }
            }
        }
        
    }
    
    
    //MARK: -SignIn IBAction
    @IBAction func signinAction(_ sender: UIButton) {
        
        if let viewControllers = self.navigationController?.viewControllers {
            for vc in viewControllers {
                if vc is LoginVC {
                    self.navigationController?.popToViewController(vc, animated: true)
                    break
                }
            }
        }
    }
    
    
    
    
    
}
