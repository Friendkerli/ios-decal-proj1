//
//  DataList.swift
//  ToDoListApp
//
//  Created by Mac on 10/12/15.
//  Copyright © 2015 Yang Li. All rights reserved.
//

import Foundation

class DataList {
    var dataList = [Data]()
    
    func addLine(s: String) {
        self.dataList.append(Data(s: s))
    }

}