//
//  dataBase.swift
//  WeChatArticle
//
//  Created by Broven on 16/2/24.
//  Copyright © 2016年 Broven. All rights reserved.
//

import Foundation
class Article  {
    var title : String
    var description : String
    var picUrl : String
    var url : String

    init(title : String, description : String, picUrl : String, url: String){
        self.title = title
        self.description = description
        self.picUrl = picUrl
        self.url = url
    }
    }
