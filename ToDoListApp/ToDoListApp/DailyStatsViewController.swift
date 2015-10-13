//
//  DailyStatsViewController.swift
//  ToDoListApp
//
//  Created by Mac on 10/12/15.
//  Copyright © 2015 Yang Li. All rights reserved.
//

import Foundation
import UIKit

class DailayStatsViewController: UIViewController {
    
    @IBOutlet var tasks: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var count = 0
        for (var i = 0; i < dataList.count; i++) {
            if (dataList[i].done) {
                count++
            }
        }
        tasks.text = String(count)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}