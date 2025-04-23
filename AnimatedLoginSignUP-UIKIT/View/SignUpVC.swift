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
    @IBOutlet weak var signupVC: AnimatableView!
    @IBOutlet weak var usernametxtField: AnimatableTextField!
    @IBOutlet weak var emailtxtField: AnimatableTextField!
    @IBOutlet weak var passwordtxtField: AnimatableTextField!
    @IBOutlet weak var signupBtn: AnimatableButton!
    @IBOutlet weak var accountLbl: AnimatableLabel!
    @IBOutlet weak var signInBtn: AnimatableButton!
    
    //MARK: -View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: -SignUp IBAction
    @IBAction func signupAction(_ sender: UIButton) {
        
        
    }
    
    
    //MARK: -SignIn IBAction
    @IBAction func signinAction(_ sender: UIButton) {
        
        
    }
    
    

    

}
