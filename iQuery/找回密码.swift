//
//  找回密码.swift
//  iQuery
//
//  Created by DaoPr on 2017/6/8.
//  Copyright © 2017年 CIRein. All rights reserved.
//

//
//  找回密码.swift
//  iQuery
//
//  Created by DaoPr on 2017/6/7.
//  Copyright © 2017年 CIRein. All rights reserved.
//

import Foundation
import UIKit

class 找回密码协议 {
  weak var 业务 :找回密码?
}

class 找回密码: NSObject{
  var 范畴 :String! = "找回密码"
  lazy var 数据 :找回密码数据 =
    {
      var v =  找回密码数据()
      v.业务 = self
      return v;
  }()
  lazy var 请求 :找回密码请求 =
    {
      var v =  找回密码请求()
      v.业务 = self
      return v;
  }()
  weak var 控制器 :找回密码控制器?
  weak var 视图   :找回密码视图?
  override init() {
    super.init()
    填写默认数据()
  }
  // 业务
  func 流程() {
    
  }
  func 填写默认数据() {
    
  }
  func 找回密码成功(_ result:Any) {
    
  }
  func 找回密码失败(_  error:String) {
    print("找回密码失败，原因:\(error)");
  }
  
}
class 找回密码数据: 找回密码协议 {
  var userName :String?
  var userPassword :String?
  override init() {
     super.init()
    读取默认数据()
  }
  func 读取默认数据(){
    self.userName = "xu"
    self.userPassword = "12345"
  }
}


class 找回密码请求: 找回密码协议 {
  func 发送找回密码请求(_ name:String,_ password:String) {
    
    let result:String =  模拟服务器.sharedInstance.接收请求("找回密码")
    if (result as NSString) .boolValue {
      self.业务?.找回密码成功(result);
    } else{
      self.业务?.找回密码失败("服务器拒绝");
    }
  }
}





