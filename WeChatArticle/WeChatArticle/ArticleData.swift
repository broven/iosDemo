//
//  ArticleData.swift
//  WeChatArticle
//
//  Created by Broven on 16/2/24.
//  Copyright © 2016年 Broven. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
class ArticleData  {
    
    class func getJson(returnArticleNumber num :Int = 10, randomOrNot : Bool = true , word:String = "盗墓笔记" , page :Int =  1) {
        var rand : Int
        if randomOrNot == false{
            rand = 0
        }else{
            rand = 1
        }
        
    let headers = ["apikey": "c1214eed82cd2926585cdad8d4c9dd47"]
    
        Alamofire.request(.GET,"http://apis.baidu.com/txapi/weixin/wxhot?num=10&rand=1&word=%E7%9B%97%E5%A2%93%E7%AC%94%E8%AE%B0&page=1", headers : headers,parameters : ["num" : num,"rand" : rand , "word": word,"page" : page]).responseJSON() {
        response in
            if let i = response.result.value{
            let json = JSON(i)
            parseJSONToStruct(<#T##ArticleData#>)
                        }
            }
        
    }
    private func parseJSONToStruct(json : JSON){
        let type = json["newslist"][1]["title"].stringValue
        print("say:",type)

        
    }
}