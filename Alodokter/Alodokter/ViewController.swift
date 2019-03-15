//
//  ViewController.swift
//  Alodokter
//
//  Created by HiFerdyK on 13/03/19.
//  Copyright © 2019 HiFerdyK. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // status bar color
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    // properties
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    var whosLogin: String!
    
    // action
    @IBAction func loginBtn(_ sender: UIButton) {
        // setting temp value
        let myUsername: String
        myUsername = usernameField.text!

        let myPass: String
        myPass = passwordField.text!
        
        if(myUsername == "Ferdy" && myPass == "Alodokter"){
            // change to other page
            let mainTabController = storyboard?.instantiateViewController(withIdentifier: "MainTabController") as! MainTabController
            
            present(mainTabController, animated: true, completion: nil)
            
            print("success")
        }
        else if(myUsername == "testing" && myPass == "testing"){
            // change to other page
            let mainTabController = storyboard?.instantiateViewController(withIdentifier: "MainTabController") as! MainTabController
            
            present(mainTabController, animated: true, completion: nil)
            print("you are success")
        }
        else if(myUsername.isEmpty && myPass.isEmpty){
            // create the alert
            let alert = UIAlertController(title: "Warning", message:"isi username dan password", preferredStyle:UIAlertController.Style.alert)

            // add an action (button)
            alert.addAction(UIAlertAction(title: "Close", style: UIAlertAction.Style.default, handler: nil))

            // show the alert
            self.present(alert, animated: true, completion: nil)
        }
        else{
            let alert = UIAlertController(title: "Warning", message:"Username dan password salah", preferredStyle:UIAlertController.Style.alert)

            // add an action (button)
            alert.addAction(UIAlertAction(title: "Try Again", style: UIAlertAction.Style.default, handler: nil))

            // show the alert
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
    // passing data
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//    let nextViewController = segue.destination as! HomeController
//    nextViewController.whosLogin = usernameField.text!
//    }
    
    // action
    @IBAction func backgroundOutside(_ sender: UITapGestureRecognizer) {
        usernameField.resignFirstResponder()
        passwordField.resignFirstResponder()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        usernameField.delegate = self
        passwordField.delegate = self
    }


}

