//
//  ZSLoginService.swift
//  zhuishushenqi
//
//  Created by caonongyun on 2018/10/19.
//  Copyright © 2018年 QS. All rights reserved.
//

import UIKit
import HandyJSON
import ZSAppConfig
import ZSExtension

public class ZSLoginService: NSObject {
    
    public func QQLogin(url:String, parameter:[String:Any]?,completion:@escaping ZSBaseCallback<ZSQQLoginResponse>) {
        zs_post(url, parameters: parameter) { (json) in
            if let user = ZSQQLoginResponse.deserialize(from: json) {
                completion(user)
            } else {
                completion(nil)
            }
        }
    }
    
    public func WXLogin(url:String, parameter:[String:Any]?,completion:@escaping ZSBaseCallback<ZSQQLoginResponse>) {
        zs_post(url, parameters: parameter) { (json) in
            if let user = ZSQQLoginResponse.deserialize(from: json) {
                completion(user)
            } else {
                completion(nil)
            }
        }
    }
    
    public func WBLogin(url:String, parameter:[String:Any]?,completion:@escaping ZSBaseCallback<ZSQQLoginResponse>) {
        zs_post(url, parameters: parameter) { (json) in
            if let user = ZSQQLoginResponse.deserialize(from: json) {
                completion(user)
            } else {
                completion(nil)
            }
        }
    }
    
    public func fetchSMSCode(url:String, parameter:[String:Any]?,completion:@escaping ZSBaseCallback<[String:Any]>) {
        zs_post(url, parameters: parameter) { (json) in
            completion(json)
        }
    }
    
    public func mobileLgin(urlString:String, param:[String:Any]?, completion:@escaping ZSBaseCallback<ZSQQLoginResponse>) {
        zs_post(urlString, parameters: param) { (json) in
            if let user = ZSQQLoginResponse.deserialize(from: json) {
                completion(user)
            } 
        }
    }

}
