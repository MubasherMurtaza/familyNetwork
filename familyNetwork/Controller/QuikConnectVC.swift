//
//  QuikConnectVC.swift
//  familyNetwork
//
//  Created by Apple store on 19/10/2018.
//  Copyright © 2018 MubasherMurtaza. All rights reserved.
//

import UIKit
import AtomSDK

class QuikConnectVC: UIViewController {
    
    //var properties = AtomProperties(country: "<#T##AtomCountry!#>", protocol: "<#T##AtomProtocol!#>")
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBAction func connectingAction(_ sender: UIButton) {
//        AtomManager.sharedInstance()?.connect(with: properties, completion: { (<#String?#>) in
//            <#code#>
//        }, errorBlock: <#T##((Error?) -> Void)!##((Error?) -> Void)!##(Error?) -> Void#>)
    }

    /*
     
     AtomProperties* properties = [[AtomProperties alloc] initWithCountry:@"<#country#>" protocol:@"<#protocol#>"];
     
     [[AtomManager sharedInstance] connectWithProperties:properties completion:^(NSString *success) {}
     errorBlock:^(NSError *error) {}];
     
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
