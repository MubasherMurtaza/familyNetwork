//
//  SettingVC.swift
//  familyNetwork
//
//  Created by Apple store on 01/10/2018.
//  Copyright © 2018 MubasherMurtaza. All rights reserved.
//

import UIKit

class SettingVC: UIViewController {

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
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func logOutBtn(_ sender: UIButton) {
        app.selectedMode = nil
        let controller = self.navigationController?.viewControllers[1]
        self.navigationController?.popToViewController(controller!, animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
