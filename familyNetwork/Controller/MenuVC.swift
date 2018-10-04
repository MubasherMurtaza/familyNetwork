//
//  MenuVC.swift
//  familyNetwork
//
//  Created by Apple store on 30/09/2018.
//  Copyright © 2018 MubasherMurtaza. All rights reserved.
//

import UIKit


class MenuVC: UIViewController {

    @IBOutlet weak var selectedMode: UIImageView!
    
    var mode: Int = 0
    var modeImages = [#imageLiteral(resourceName: "hDStreammenuTop"), #imageLiteral(resourceName: "internetFreedomMenuTop"), #imageLiteral(resourceName: "securityMenuTop"), #imageLiteral(resourceName: "FileShareMenuTop"), #imageLiteral(resourceName: "dedicatedIPMenuTop")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        selectedMode.image = modeImages[app.selectedMode]
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBAction func loadViewAction(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Portocoal
    func userSelectMode(data: Int){
        print(data)
        mode = data
    }
    
    // MARK: - Segue Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SelectMode" {
            let modeView: ModeVC = segue.destination as! ModeVC
            modeView.selectedMode = 1
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
