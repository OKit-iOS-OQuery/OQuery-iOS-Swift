//
//  IQuery_addAttr.swift
//  IQuerySwiftDemo
//
//  Created by DaoPr on 2017/6/7.
//  Copyright © 2017年 CIRein. All rights reserved.
//

import Foundation
extension NSObject {
  func attr(_ attr:String) -> Any {
  
    return self.value(forKey: attr) ?? nil
  }
  func setAttr(_ attr:String,_ value:Any) {
    self.setValue(value, forKey: attr)
  }
  func prop(_ attr:String) -> Any {
    
    return self.attr(attr)
  }
  func setProp(_ attr:String,_ value:Any) {
    self.setAttr(attr,value)
  }
  
}
