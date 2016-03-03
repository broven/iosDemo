//
//  sub.swift
//  tableView
//
//  Created by Broven on 16/3/1.
//  Copyright © 2016年 Broven. All rights reserved.
//

import UIKit

class sub: UIViewController {
    var text : String = "tttttt"
    override func viewDidLoad() {
        print("load...")
        Label.text = text
        Label.setNeedsDisplay()
        
    }
    @IBOutlet weak var Label: UILabel!{
        didSet{
            print("change")
        }
    }

    

}
