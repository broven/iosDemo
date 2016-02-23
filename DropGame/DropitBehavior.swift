//
//  DropitBehavior.swift
//  DropGame
//
//  Created by Broven on 16/2/23.
//  Copyright © 2016年 Broven. All rights reserved.
//

import UIKit

class DropitBehavior: UIDynamicBehavior {     //把所有物理特效的行为都放到一个类里
    let gravity = UIGravityBehavior()
    
    
    lazy var collider: UICollisionBehavior = {
        let lazilyCreatedCollider = UICollisionBehavior()
        lazilyCreatedCollider.translatesReferenceBoundsIntoBoundary = true
        return lazilyCreatedCollider
    }()
    lazy var dropBehavior : UIDynamicItemBehavior = {
        let lazilyCreatdDropBehavior = UIDynamicItemBehavior()
        lazilyCreatdDropBehavior.allowsRotation = false
        lazilyCreatdDropBehavior.elasticity = 0.75
        return lazilyCreatdDropBehavior
    }()
    
    override init() {
        super.init()
        addChildBehavior(gravity)
        addChildBehavior(collider)
        addChildBehavior(dropBehavior)
        
    }
    func addDrop(drop: UIView){
        dynamicAnimator?.referenceView?.addSubview(drop)
        
        gravity.addItem(drop)
        collider.addItem(drop)
        dropBehavior.addItem(drop)
    }
    func removeBehavior(drop:UIView){
        gravity.removeItem(drop)
        collider.removeItem(drop)
        dropBehavior.removeItem(drop)
        
        
        
        
        drop.removeFromSuperview()
    }
}
