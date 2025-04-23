//
//  SplashVC.swift
//  AnimatedLoginSignUP-UIKIT
//
//  Created by Nimish Mothghare on 21/04/25.
//

import UIKit
import IBAnimatable

class SplashVC: UIViewController {
    
    
    
    @IBOutlet weak var splashLbl: AnimatableLabel!
    @IBOutlet weak var animatedBtn: AnimatableButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        splashLbl.animate(.wobble(repeatCount: 2))
//        animatedBtn.animate(.compound(animations: .init(arrayLiteral: .rotate(direction: .ccw, repeatCount: 1)), run: .parallel))
        
        animatedBtn.animate(.compound(animations: .init(repeating: .slide(way: .in, direction: .down), count: 2), run: .parallel))
        

    }
    
    
    
    @IBAction func nextscreenAction(_ sender: UIButton) {
        
        
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "LoginVC") as? LoginVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}


