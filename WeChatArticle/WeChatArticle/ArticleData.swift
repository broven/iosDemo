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
var id = 0
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
            switch response.result
            {
            case .Success:
                if let value = response.result.value
                {
                    let json = JSON(value)
                     parseJSONToStruct(json,num: num)
                }
            case .Failure(let error):
                print(error)
            }
                                    }

}
    private class func parseJSONToStruct(json : JSON , num : Int) -> [Article]{
        var ArticleList : [Article] = []
        for var index = 0 ; index < num; ++index{
            let title = json["newslist"][index]["title"].stringValue
            let description = json["newslist"][index]["description"].stringValue
            let picUrl = json["newslist"][index]["picUrl"].stringValue
            let url = json["newslist"][index]["url"].stringValue
            let art = Article(title: title, description: description, picUrl: picUrl, url: url)
            ArticleList.append(art)
            
        
            //print("say:",type)
        }//loop
        return ArticleList
    }

}