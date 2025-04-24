//
//  SignUpVC.swift
//  AnimatedLoginSignUP-UIKIT
//
//  Created by Nimish Mothghare on 23/04/25.
//

import UIKit
import IBAnimatable

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
