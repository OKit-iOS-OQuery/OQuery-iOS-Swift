//
//  sec.swift
//  iQuery
//
//  Created by DaoPr on 2017/6/7.
//  Copyright © 2017年 CIRein. All rights reserved.
//

import UIKit


class 登录: NSObject{
  var 范畴 :String = "登录/"
  var 数据 :登录数据 = 登录数据()
  var 请求 :登录请求 = 登录请求()
}

class 登录请求: NSObject {
  override init() {
  }
}

class 登录数据: NSObject {
  var userName :String
  var userPassword :String
  override init() {
    self.userName = ""
    self.userPassword = ""
  }
}
class 登录视图: UIView {
  @IBOutlet weak var 用户名输入框: UITextField!
  @IBOutlet weak var 密码输入框: UITextField!
  
}


class 登录控制器: UIViewController {
  var 业务 :登录 = 登录()
  var 视图 :登录视图 { get { return self.view as! 登录视图} }
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.业务.数据.userName = "xu";
    self.业务.数据.userPassword = "hao";
    
    
    self.视图.用户名输入框.id = "\(self.业务.范畴)用户名输入框";
    self.视图.密码输入框.id = "\(self.业务.范畴)密码输入框";
    
    
    // Do any additional setup after loading the view.
    
  }
  @IBAction func signUp(_ sender: Any) {
    
    let  main = UIStoryboard(name: "Main", bundle:nil)
    let 注册控制器实例 = main.instantiateViewController(withIdentifier: "注册控制器")
    self.navigationController?.pushViewController(注册控制器实例, animated: true)
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   // Get the new view controller using segue.destinationViewController.
   // Pass the selected object to the new view controller.
   }
   */
  
}
