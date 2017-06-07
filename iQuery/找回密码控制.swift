//
//  找回密码视图.swift
//  iQuery
//
//  Created by DaoPr on 2017/6/8.
//  Copyright © 2017年 CIRein. All rights reserved.
//

import Foundation
import UIKit



class 找回密码视图: UIView {
  weak var 业务 :找回密码?{
    didSet {
      self.初始化视图标记()
    }
  }
  @IBOutlet weak var 用户名输入框: UITextField!
  @IBOutlet weak var 密码输入框: UITextField!
  
  @IBAction func 找回密码按钮按起事件(_ sender: Any) {
    
    self.业务?.请求.发送找回密码请求(self.用户名输入框.text!,self.密码输入框.text!)
  }
  func 初始化视图标记()  {
    self.用户名输入框.id = "\(self.业务!.范畴!)/用户名输入框";
    self.密码输入框.id = "\(self.业务!.范畴!)/密码输入框";
  }
  
}



class 找回密码控制器: UIViewController {
  lazy var 业务 :找回密码 = {
    var 业务 = 找回密码()
    业务.控制器 = self
    业务.视图 = self.view as? 找回密码视图
    业务.视图?.业务 = 业务
    return 业务;
  }()
  
  var 视图 :找回密码视图 {
    get {
      return  self.view as! 找回密码视图;
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
