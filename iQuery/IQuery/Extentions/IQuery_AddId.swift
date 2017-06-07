//
//  IQuery_addId.swift
//  iQuery
//
//  Created by DaoPr on 2017/6/7.
//  Copyright © 2017年 CIRein. All rights reserved.
//

//
//  IQuery_addId.swift
//  IQuerySwiftDemo
//
//  Created by DaoPr on 2017/6/7.
//  Copyright © 2017年 CIRein. All rights reserved.
//

import Foundation
extension NSObject {
  
  struct IQuery_RuntimeKey {
    static let IQuery_Key_id = UnsafeRawPointer.init(bitPattern: "IQuery_Key_id".hashValue)
    
  }
  
  var id: String?  {
    set {
      objc_setAssociatedObject(self, IQuery_RuntimeKey.IQuery_Key_id!, newValue, .OBJC_ASSOCIATION_COPY_NONATOMIC)
      iQueryManager.sharedInstance.dict.setObject(self, forKey: newValue! as AnyObject)
    }
    
    get {
      return  objc_getAssociatedObject(self, IQuery_RuntimeKey.IQuery_Key_id!) as? String
    }
  }
  
}

