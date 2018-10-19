//
//  MenuVC.swift
//  familyNetwork
//
//  Created by Apple store on 30/09/2018.
//  Copyright © 2018 MubasherMurtaza. All rights reserved.
//

import UIKit


class MenuVC: UIViewController {

    @IBOutlet weak var detailModes: UIStackView!
    @IBOutlet weak var ozoneContioner: UIView!
    @IBOutlet weak var hdStreamContioner: UIView!
    
    @IBOutlet weak var selectedMode: UIImageView!
    
    var mode: Int = 0
    var modeImages = [#imageLiteral(resourceName: "hDStreammenuTop"), #imageLiteral(resourceName: "internetFreedomMenuTop"), #imageLiteral(resourceName: "securityMenuTop"), #imageLiteral(resourceName: "FileShareMenuTop"), #imageLiteral(resourceName: "dedicatedIPMenuTop")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        selectedMode.image = modeImages[app.selectedMode]
        switch app.selectedMode {
        case 3:
            detailModes.isHidden = false
            ozoneContioner.isHidden = true; hdStreamContioner.isHidden = true
        case 2:
            ozoneContioner.isHidden = false
            detailModes.isHidden = true; hdStreamContioner.isHidden = true
        default:
            hdStreamContioner.isHidden = false
            ozoneContioner.isHidden = true; detailModes.isHidden = true
        }
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBAction func loadViewAction(_ sender: UIButton) {
        
    }
    
    @IBAction func segueAction(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        
        switch sender.tag {
        case 11:
            performSegue(withIdentifier: "ProtectionVC", sender: self)
        case 12, 22, 31:
            performSegue(withIdentifier: "GravityVC", sender: self)
        case 21:
            performSegue(withIdentifier: "OzoneVC", sender: self)
        case 14,24, 33:
            performSegue(withIdentifier: "FAQVC", sender: self)
        default:
            performSegue(withIdentifier: "SettingVC", sender: self)
        }
    }
    
    // MARK: - Portocoal
    func userSelectMode(data: Int){
        print(data)
        mode = data
    }
    
    // MARK: - Segue Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SelectMode" {
            
        }
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
