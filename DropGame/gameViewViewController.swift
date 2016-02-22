//
//  gameViewViewController.swift
//  DropGame
//
//  Created by Broven on 16/2/22.
//  Copyright © 2016年 Broven. All rights reserved.
//

import UIKit

class gameViewViewController: UIViewController {

    @IBOutlet weak var gameView: UIView!
    
    var dropPerRow = 10
    var dropSize : CGSize{
        let size = gameView.bounds.size.width / CGFloat(dropPerRow)
        return CGSize(width: size, height: size)
    }
    
    
    @IBAction func drop(sender: AnyObject) {
        drop()
    }
    func drop(){
        var frame = CGRect(origin: CGPointZero, size: dropSize)
        frame.origin.x = CGFloat.random(dropPerRow)
    }
    
}
//MARK: extension
private extension CGFloat{
    static func random(max: Int) -> CGFloat{
        return CGFloat(arc4random() % UInt32(max))
    }
}