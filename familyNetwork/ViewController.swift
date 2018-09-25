//
//  ViewController.swift
//  familyNetwork
//
//  Created by Apple store on 25/09/2018.
//  Copyright © 2018 MubasherMurtaza. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollDashboard: UIScrollView!
    @IBOutlet weak var pageControll: UIPageControl!
    
    @IBOutlet var Step_1: UIView!
    @IBOutlet var Step_2: UIView!
    @IBOutlet var Step_3: UIView!
    @IBOutlet var Step_4: UIView!
    
    var width:Int = 0
    var height:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        scrollDashboard.delegate = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.showImageScrolling()
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showImageScrolling(){
        var xOffset = 0
        
        width = Int(self.view.bounds.size.width)
        height = Int(self.view.bounds.size.height)
        
        print(width,height)
        
        
        for index in 0...3{
            if index == 0{
                self.Step_1.frame = CGRect (x:xOffset, y:0, width:width, height:height)
                self.scrollDashboard.addSubview(self.Step_1)}
            if index == 1{
                self.Step_2.frame = CGRect (x:xOffset, y:0, width:width, height:height)
                self.scrollDashboard.addSubview(self.Step_2)}
            if index == 2{
                self.Step_3.frame = CGRect (x:xOffset, y:0, width:width, height:height)
                self.scrollDashboard.addSubview(self.Step_3)}
            if index == 3{
                self.Step_4.frame = CGRect (x:xOffset, y:0, width:width, height:height)
                self.scrollDashboard.addSubview(self.Step_4)
                xOffset -= width}
            xOffset += width
        }
        print(xOffset)
        scrollDashboard.contentSize = CGSize(width: width+xOffset, height: 0)
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageWidth = scrollDashboard.frame.size.width
        let page = floor((scrollDashboard.contentOffset.x - pageWidth / 2) / pageWidth) + 1
        pageControll.currentPage = Int(page)
    }


}

