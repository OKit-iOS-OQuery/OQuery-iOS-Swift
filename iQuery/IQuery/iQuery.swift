//
//  IQuery.swift
//  iQuery
//
//  Created by DaoPr on 2017/6/7.
//  Copyright © 2017年 CIRein. All rights reserved.
//

import Foundation
public func Q(_ selector: String) -> NSObject {
  
  return iQueryManager.sharedInstance.getObject(selector) as! NSObject
}

