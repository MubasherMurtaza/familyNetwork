//
//  LocationTabVC.swift
//  familyNetwork
//
//  Created by Apple store on 29/09/2018.
//  Copyright © 2018 MubasherMurtaza. All rights reserved.
//

import UIKit

class LocationTabVC: UIViewController {

    @IBOutlet weak var btnCountries: UIButton!
    @IBOutlet weak var btnCities: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func locBtn(_ sender: UIButton) {
        //let btnCheckMarkImage = UIImage(CGImage: nil)
        
        if sender.tag == 0{
            sender.setBackgroundImage(UIImage(named: "leftHighLight"), for: .normal)
            btnCities.setBackgroundImage(nil, for: .normal)
        }else{
            sender.setBackgroundImage(UIImage(named: "rightHightLight"), for: .normal)
            btnCountries.setBackgroundImage(nil, for: .normal)
        }
        
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
