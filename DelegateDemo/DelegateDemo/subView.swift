//
//  subView.swift
//  DelegateDemo
//
//  Created by Broven on 16/2/19.
//  Copyright © 2016年 Broven. All rights reserved.
//

import UIKit
//MARK:1
protocol subViewDelegate : class{
    func getcolor(sener : subView) -> UIColor
}

class subView: UIView {
    
    
    
    var label  = UILabel(frame: CGRect(x: 0, y: 0, width: 200 , height: 200))
//MARK: 2
weak var color : subViewDelegate?
    override func awakeFromNib() {   //执行当view在storyboard中,而且当它将要被加载时
        print("subView init...")
        label.backgroundColor = color?.getcolor(self)
        addSubview(label)

        
    }


    

}
