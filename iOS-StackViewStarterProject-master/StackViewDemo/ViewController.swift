//
//  ViewController.swift
//  StackViewDemo
//
//  Created by Jordan Morgan on 6/10/15.
//  Copyright © 2015 Jordan Morgan. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var verticalStackView: UIStackView!
    @IBOutlet weak var horizontalStackView: UIStackView!
    
    @IBAction func BTNClick(sender: AnyObject) {
        let img = UIImageView(image: UIImage(named: "star"))
        img.contentMode = .ScaleAspectFit                  //调整图片比例
        //let starImgVw:UIImageView = UIImageView(image: UIImage(named: "star"))
        self.horizontalStackView.addArrangedSubview(img)                       //?为什么是addangesubview
        UIView.animateWithDuration(0.25, animations: {
            self.horizontalStackView.layoutIfNeeded()                           //添加动画
        })
        
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

