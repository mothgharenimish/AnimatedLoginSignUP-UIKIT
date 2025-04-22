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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loginView.animate(.compound(animations: .init(arrayLiteral: .slideFade(way: .in, direction: .down)), run: .parallel))
        emailtxtField.animate(.compound(animations: .init(arrayLiteral: .slide(way: .in, direction: .down)), run: .parallel))
    }
    

   
}
