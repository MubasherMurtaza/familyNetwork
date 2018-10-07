//
//  ModeVC.swift
//  familyNetwork
//
//  Created by Apple store on 03/10/2018.
//  Copyright © 2018 MubasherMurtaza. All rights reserved.
//

import UIKit


class ModeVC: UIViewController {

    
    @IBOutlet var trueSgn: [UIImageView]!
    @IBOutlet var modeLbl: [UILabel]!
    @IBOutlet weak var pFNBackBtn: UIView!
    
    @IBOutlet weak var animationTrueSign: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        if app.selectedMode != nil{
            let views: [String: Any] = ["modeTxt": modeLbl[app.selectedMode], "trueSign": trueSgn[app.selectedMode]]
            let format = "H:[modeTxt]-1-[trueSign]"
            LoadConstraint.constraint(format, views: views)
            trueSgn[app.selectedMode].isHidden = false
            pFNBackBtn.isHidden = false
        }
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBAction func menuDetailAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func dedicatedIPMode(_ sender: UIButton) {
        app.selectedMode = sender.tag
        
        trueSgn[sender.tag].isHidden = false
        if animationTrueSign != nil {
            animationTrueSign.isActive = false
            self.view.layoutIfNeeded()
        }
        performSegue(withIdentifier: "DedicatedIP", sender: self)
    }
    
    @IBAction func detailModes(_ sender: UIButton) {
        app.selectedMode = sender.tag
        
            let views: [String: Any] = ["modeTxt": modeLbl[sender.tag], "trueSign": trueSgn[sender.tag]]
            let format = "H:[modeTxt]-1-[trueSign]"
            LoadConstraint.constraint(format, views: views)
            trueSgn[sender.tag].isHidden = false
        
        performSegue(withIdentifier: "deatilSegu", sender: self)
        
    }
    
    @IBAction func securityFileModes(_ sender: UIButton) {
        app.selectedMode = sender.tag
        performSegue(withIdentifier: "SecurityFileSegu", sender: self)
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
