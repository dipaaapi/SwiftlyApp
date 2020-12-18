//
//  ViewController.swift
//  swiftlyApp
//
//  Created by Dev on 12/18/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
 
        func switchScreen() {
            let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
            if let viewController = mainStoryboard.instantiateViewController(withIdentifier: "OnboardView") as? UIViewController {
                self.present(viewController, animated: true, completion: nil)
            }
        }
        
    }
}
