//
//  ViewController.swift
//  PlayGround
//
//  Created by Amila Kumara on 5/3/18.
//  Copyright © 2018 Infor. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func tapLogin(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let formController = storyBoard.instantiateViewController(withIdentifier: "Form") as! FormController
        self.present(formController, animated: true, completion: nil)
    }
}

