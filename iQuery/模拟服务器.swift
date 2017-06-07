//
//  模拟服务器.swift
//  iQuery
//
//  Created by DaoPr on 2017/6/8.
//  Copyright © 2017年 CIRein. All rights reserved.
//

import Foundation

class 模拟服务器: NSObject{
  func 接收注册请求(_ request:String)->String {
    return "true"
    
  }
  func 接收请求(_ request:String)->String {
    return "true"
    
  }
  static var sharedInstance : 模拟服务器 {
    struct Static {
      static let instance : 模拟服务器 = 模拟服务器()
    }
    return Static.instance
  }
}
