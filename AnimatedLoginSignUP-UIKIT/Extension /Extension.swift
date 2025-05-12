//
//  Extension.swift
//  AnimatedLoginSignUP-UIKIT
//
//  Created by Nimish Mothghare on 12/05/25.
//

import Foundation
import UIKit


extension UIViewController {
    
    func shownaviagtionAlert(title: String, message: String, completion: (() -> Void)? = nil) {
           let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
           alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
               completion?()
           }))
           self.present(alert, animated: true, completion: nil)
       }
}
