//
//  iQuery.swift
//  iQuery
//
//  Created by DaoPr on 2017/6/7.
//  Copyright © 2017年 CIRein. All rights reserved.
//

import UIKit

class iQueryManager: NSObject {
  var dict: NSMapTable<AnyObject, AnyObject>
  override init() {
    self.dict = NSMapTable.strongToWeakObjects()
  }
  func getObject(_ selector:String) -> Any {
    return self.dict.object(forKey: selector.replacingOccurrences(of: "#", with: "") as AnyObject) as Any
  }
  
  static var sharedInstance : iQueryManager {
    struct Static {
      static let instance : iQueryManager = iQueryManager()
    }
    return Static.instance
  }
}
