//
//  ViewController.swift
//  Practical_Test_1
//
//  Created by Sahil Saharkar on 06/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func login_btn(_ sender: UIButton) {
        if(userName.text=="admin" && password.text=="admin") {
            let homepage_vc=self.storyboard?.instantiateViewController(withIdentifier: "HomePageViewController") as! HomePageViewController
            self.navigationController?.pushViewController(homepage_vc, animated: true)
        }
    }
    
}

