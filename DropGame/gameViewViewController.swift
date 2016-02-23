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

    lazy var animator : UIDynamicAnimator = {
        let lazilyCreatedDynamicAnimic =  UIDynamicAnimator(referenceView: self.gameView)
        return lazilyCreatedDynamicAnimic
    }()
    
    let dropitBehavior = DropitBehavior()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animator.addBehavior(dropitBehavior)


    }
 
    var dropPerRow = 10
    
    var dropSize : CGSize{      //掉下来的正方形的大小
        let size = gameView.bounds.size.width / CGFloat(dropPerRow)
        return CGSize(width: size, height: size)
    }
    //MARK:ACTION
    
    @IBAction func touch(sender: UITapGestureRecognizer) {
         drop()
    }
    

    
    func drop(){
        var frame = CGRect(origin: CGPointZero, size: dropSize)
        frame.origin.x = CGFloat.random(dropPerRow) * dropSize.width
        let dropView = UIView(frame: frame)
        dropView.backgroundColor = UIColor.random
        gameView.addSubview(dropView)
        dropitBehavior.addDrop(dropView)

    }
    
    @IBAction func grabDrop(sender: UIPanGestureRecognizer) {
    }
}
//MARK: extension 
private extension CGFloat{
    static func random(max: Int) -> CGFloat{
        return CGFloat(arc4random() % UInt32(max))
    }

}

private extension UIColor{
    class var random: UIColor{
        switch arc4random()%5{
        case 0 :return UIColor.greenColor()
        case 1: return UIColor.blueColor()
        case 2: return UIColor.orangeColor()
        case 3: return UIColor.redColor()
        case 4: return UIColor.purpleColor()
        default:return UIColor.blackColor()
        }
    }
}