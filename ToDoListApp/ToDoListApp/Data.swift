//
//  Data.swift
//  ToDoListApp
//
//  Created by Mac on 10/12/15.
//  Copyright © 2015 Yang Li. All rights reserved.
//

import Foundation

var dataList = [Data]()

class Data {
    var content: String
    var done: Bool
    var endTime: NSDate!
    
    init(s: String) {
        content = s
        done = false
    }
}