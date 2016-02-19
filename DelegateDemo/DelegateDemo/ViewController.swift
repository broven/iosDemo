//
//  ViewController.swift
//  DelegateDemo
//
//  Created by Broven on 16/2/19.
//  Copyright © 2016年 Broven. All rights reserved.
//

import UIKit

class ViewController:UIViewController , subViewDelegate{  //MARK: 3

//MARK:5
    @IBOutlet weak var sView: subView!{
        didSet{
            sView.color = self
            print("1 set")
        }
    }
    var subColor = UIColor.blueColor(){
        didSet{
            sView.setNeedsDisplay()
            print("color init in contro")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func btnCilcke(sender: AnyObject) {
        print("BtnClick")                           //C to V就可以直接进行操作
        sView.label.backgroundColor = UIColor.redColor()
        sView.setNeedsDisplay()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //MARK: subViewDelegata
    func getcolor(sener: subView) -> UIColor {   //MARK: 4
        print("return color")
        return subColor
    }


}

