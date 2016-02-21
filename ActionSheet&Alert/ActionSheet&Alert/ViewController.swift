//
//  ViewController.swift
//  ActionSheet&Alert
//
//  Created by Broven on 16/2/21.
//  Copyright © 2016年 Broven. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var ii: UILabel!
    @IBAction func actionSheet(sender: AnyObject) {
        let alert = UIAlertController(title: "标题",
                                    message: "小字描述",
                             preferredStyle: UIAlertControllerStyle.ActionSheet
        )
        alert.addAction(UIAlertAction(title: "1",
                                      style: UIAlertActionStyle.Default,
                                    handler: nil
            ))
        alert.addAction(UIAlertAction(title: "2",
            style: UIAlertActionStyle.Default,
            handler: nil
            ))
        alert.addAction(UIAlertAction(title: "!", style: .Default){
            (action:UIAlertAction) -> Void in
            self.ii.text = "dfsfad"
            })

        alert.addAction(UIAlertAction(title: "cancel",
            style: UIAlertActionStyle.Cancel,
            handler:  nil))
        
        presentViewController(alert, animated: true, completion: nil)
    }

    @IBAction func alert(sender: AnyObject) {
        let alert2 = UIAlertController(title: "title", message: "some text", preferredStyle: UIAlertControllerStyle.Alert)
        alert2.addTextFieldWithConfigurationHandler{(textField)-> Void in
            textField.placeholder = "站位"
            }
        alert2.addAction(UIAlertAction(title: "登录", style: .Default, handler: nil))
        presentViewController(alert2, animated: true, completion: nil)
   }
}