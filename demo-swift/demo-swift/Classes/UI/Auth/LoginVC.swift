//
//  LoginVC.swift
//  demo-swift
//
//  Created by Quang Pham on 8/9/17.
//  Copyright © 2017 Quang Pham. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    //MARK: - Actions
    @IBAction func btnLoginClicked() {
        let username = ""
        let password = ""
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        if AuthService.login(username, password) {
            let user = UserObject()
            user.email = username
            user.token = "SOME_TOKEN"
            appDelegate?.loginWithUser(user)
        }
    }

}
