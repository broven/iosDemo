//
//  CGAffineViewController.swift
//  Animation
//
//  Created by Broven on 16/3/14.
//  Copyright © 2016年 Broven. All rights reserved.
//

import UIKit

class CGAffineViewController: UIViewController {

    @IBOutlet weak var uiView: UIView!
    
    @IBAction func dong(sender: AnyObject) {
        UIView.animateWithDuration(0.5, delay: 0, options: .CurveEaseInOut, animations: { () -> Void in
            self.uiView.transform = CGAffineTransformMakeRotation(CGFloat(M_PI_4))
            }) { (_) -> Void in
                self.uiView.transform = CGAffineTransformIdentity
        }
        
    }
}
