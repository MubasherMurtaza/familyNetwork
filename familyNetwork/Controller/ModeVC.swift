//
//  ModeVC.swift
//  familyNetwork
//
//  Created by Apple store on 03/10/2018.
//  Copyright © 2018 MubasherMurtaza. All rights reserved.
//

import UIKit


class ModeVC: UIViewController {

    @IBOutlet weak var trueSign: UIImageView!
    @IBOutlet weak var animationTrueSign: NSLayoutConstraint!
    
    var selectedMode: Int! = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBAction func menuDetailAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func selectModeBtn(_ sender: UIButton) {
        app.selectedMode = sender.tag
        
        trueSign.isHidden = false
        if animationTrueSign != nil {
            animationTrueSign.isActive = false
            self.view.layoutIfNeeded()
        }
        self.navigationController?.popViewController(animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
