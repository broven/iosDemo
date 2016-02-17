//
//  ViewController.swift
//  getData
//
//  Created by Broven on 16/2/14.
//  Copyright © 2016年 Broven. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var vv: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func click(sender: AnyObject) {
        let URL = NSURL(string : "https://www.douban.com")
        let data = NSData(contentsOfURL: URL!)
        let t = String(data: data!, encoding: NSUTF8StringEncoding)
        vv.text = t
    }

}

