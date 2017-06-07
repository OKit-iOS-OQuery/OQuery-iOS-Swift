//
//  ViewController.swift
//  iQuery
//
//  Created by DaoPr on 2017/6/7.
//  Copyright © 2017年 CIRein. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.view.id = "seci"
    
    print(Q("#seci"))
    print(Q("#seci").attr("backgroundColor"));
    
    Q("#seci").setAttr("backgroundColor",UIColor.red);
        print(Q("#seci").attr("backgroundColor"));
        print(Q("#seci").prop("backgroundColor"));
    
    Q("#seci").setProp("backgroundColor",UIColor.blue);
      print(Q("#seci").attr("backgroundColor"));
        print(Q("#seci").prop("backgroundColor"));
    
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
}


