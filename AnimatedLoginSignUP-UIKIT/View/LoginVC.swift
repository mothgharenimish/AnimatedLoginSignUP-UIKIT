//
//  LoginVC.swift
//  AnimatedLoginSignUP-UIKIT
//
//  Created by Nimish Mothghare on 22/04/25.
//

import UIKit
import IBAnimatable

class LoginVC: UIViewController {
    
    //MARK: -IBOutlet
    @IBOutlet weak var loginView: AnimatableView!
    @IBOutlet weak var emailtxtField: AnimatableTextField!
    @IBOutlet weak var passwordtxtField: AnimatableTextField!
    @IBOutlet weak var loginBtn: AnimatableButton!
    @IBOutlet weak var accountLbl: AnimatableLabel!
    @IBOutlet weak var signupBtn: AnimatableButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loginView.animate(.compound(animations: .init(arrayLiteral: .slideFade(way: .in, direction: .down)), run: .parallel))
      
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
              print("Code executed after 2 seconds")
            
            
            self.emailtxtField.animate(.compound(animations: .init(arrayLiteral: .slide(way: .in, direction: .left)), run: .parallel))
            
            
            self.passwordtxtField.animate(.compound(animations: .init(arrayLiteral: .slide(way: .in, direction: .left)), run: .parallel))
            
            self.loginBtn.animate(.compound(animations: .init(arrayLiteral: .slide(way: .in, direction: .left)), run: .parallel))
            
            self.accountLbl.animate(.compound(animations: .init(arrayLiteral: .slide(way: .in, direction: .left)), run: .parallel))
            
            self.signupBtn.animate(.compound(animations: .init(arrayLiteral: .slide(way: .in, direction: .left)), run: .parallel))


            
          }
    }
    
    
    
    
    @IBAction func signInaction(_ sender: UIButton) {
        
        
    }
    
    
    @IBAction func signupAction(_ sender: UIButton) {
        
        
    }
    
}
