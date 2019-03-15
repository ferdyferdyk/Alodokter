//
//  ProfileController.swift
//  Alodokter
//
//  Created by HiFerdyK on 14/03/19.
//  Copyright © 2019 HiFerdyK. All rights reserved.
//

import UIKit

class ProfileController: UIViewController {
    
    @IBOutlet weak var nameUserLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameUserLabel.text = "Nama : Ferdy"

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
