//
//  OzoneVC.swift
//  familyNetwork
//
//  Created by Apple store on 07/10/2018.
//  Copyright © 2018 MubasherMurtaza. All rights reserved.
//

import UIKit

class OzoneVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBAction func PFNAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
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
