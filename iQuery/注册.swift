//
//  注册.swift
//  iQuery
//
//  Created by DaoPr on 2017/6/7.
//  Copyright © 2017年 CIRein. All rights reserved.
//

import Foundation
import UIKit

class 注册基类 {
  weak var 业务 :注册?
}

class 注册: NSObject{
  var 范畴 :String! = "注册"
  lazy var 数据 :注册数据 =
      {
      var v =  注册数据()
      v.业务 = self
      return v;
    }()
  lazy var 请求 :注册请求 =
    {
    var v =  注册请求()
    v.业务 = self
    return v;
  }()
  weak var 控制器 :注册控制器?
  weak var 视图   :注册视图? {
    didSet {
        self.填写默认数据()
    }
  }
  
  func 流程() {
    
    
  }
  func 填写默认数据() {
    self.视图?.用户名输入框.text =  self.数据.userName
    self.视图?.密码输入框.text =  self.数据.userPassword
  }
  func 注册成功(_ name:String,_ password:String) {
    (Q("#登录/用户名输入框") as? UITextField )?.text =  name;
    (Q("#登录/密码输入框") as? UITextField )?.text = password;
    self.控制器?.navigationController?.popViewController(animated: true)
  }
  func 注册失败(_  error:String) {
    print("注册失败，原因:\(error)");
  }
  
}

class 注册请求: 注册基类 {
  func 发送注册请求(_ name:String,_ password:String) {
    
    let result:String =  模拟服务器.sharedInstance.接收注册请求("注册")
    if (result as NSString) .boolValue {
      self.业务?.注册成功(name, password);
    } else{
        self.业务?.注册失败("服务器拒绝");
    }
  }
}

class 注册数据: 注册基类 {
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
class 注册视图: UIView {
  weak var 业务 :注册? {
  didSet {
    self.标记()}
  }
  @IBOutlet weak var 用户名输入框: UITextField!
  @IBOutlet weak var 密码输入框: UITextField!
  
  @IBAction func 注册按钮按起事件(_ sender: Any) {
    
    self.业务?.请求.发送注册请求(self.用户名输入框.text!,self.密码输入框.text!)
  }
  func 标记()  {
    self.用户名输入框.id = "\(self.业务!.范畴!)/用户名输入框";
    self.密码输入框.id = "\(self.业务!.范畴!)/密码输入框";
  }
  
}


class 注册控制器: UIViewController {
  lazy var 业务 :注册 = {
    var 业务 = 注册()
    业务.控制器 = self
    业务.视图 = self.view as? 注册视图
    业务.视图?.业务 = 业务
    return 业务;
  }()
  
   var 视图 :注册视图 {
    get {
      return  self.view as! 注册视图;
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.业务.流程();
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    
  }
}



