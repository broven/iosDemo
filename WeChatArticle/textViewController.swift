//
//  textViewController.swift
//  WeChatArticle
//
//  Created by Broven on 16/3/1.
//  Copyright © 2016年 Broven. All rights reserved.
//

import UIKit

class textViewController: UIViewController {
    var a : [Article] = []
    @IBOutlet weak var textiew: UITextView!
    @IBAction func showJson(sender: AnyObject) {
        textiew.text = a[0].title
        
    }

    override func viewDidLoad() {
         a += ArticleData.getJson()
    }
}
