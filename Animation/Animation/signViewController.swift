//
//  signViewController.swift
//  Animation
//
//  Created by Broven on 16/3/11.
//  Copyright © 2016年 Broven. All rights reserved.
//

import UIKit

class signViewController: UIViewController {

    
    @IBOutlet weak var singTextField: UITextField!
    @IBOutlet weak var passwardTextField: UITextField!
    //MARK:1.此处将两个textFileld的垂直方向上的约束拿进来
    @IBOutlet weak var signCon: NSLayoutConstraint!
    @IBOutlet weak var passwardCon: NSLayoutConstraint!
    
    @IBOutlet weak var singInButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        //用层设置圆角
       singInButton.layer.cornerRadius = 5
        
    }

    override func viewWillAppear(animated: Bool) {
        print("移动出去..")
//        self.singTextField.center.x -= self.view.bounds.width
//        self.passwardTextField.center.x -= self.view.bounds.width
        
        
        //MARK:2.在view还没有显示的时候将两个textField向左移动出去,为一会动画做准备
        
        signCon.constant -= self.view.bounds.width
        passwardCon.constant -= self.view.bounds.width
    }
    override func viewDidAppear(animated: Bool) {
        //MARK:3.添加动画
        //completion:一个闭包，当动画执行完之后会执行该闭包中的逻辑，可以用来连接动画，或者是在动画结束后你需要做一些清理工作等。
        super.viewDidAppear(animated)
        UIView.animateWithDuration(0.8,
                              delay: 0.00,
                            options: UIViewAnimationOptions.CurveEaseOut,
                         animations:{self.signCon.constant += self.view.bounds.width
                                     self.view.layoutIfNeeded()},
                         completion: nil)
        UIView.animateWithDuration(0.8,
            delay: 0.20,
            options: UIViewAnimationOptions.CurveEaseOut,
            animations:{self.passwardCon.constant += self.view.bounds.width
                        self.view.layoutIfNeeded()},
            completion: nil)
    }
   
}
