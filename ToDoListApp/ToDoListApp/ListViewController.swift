//
//  ViewController.swift
//  ToDoListApp
//
//  Created by Mac on 10/12/15.
//  Copyright © 2015 Yang Li. All rights reserved.
//

import UIKit

class ListViewController: UITableViewController {
    
    //static var dataList = [Data]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        let now = NSDate()
        for (var i = 0; i < dataList.count; i++) {
            if (dataList[i].endTime != nil && dataList[i].endTime.compare(now) == NSComparisonResult.OrderedAscending) {
                dataList.removeAtIndex(i)
            }
        }
        self.tableView.reloadData()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let data = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        if dataList[indexPath.item].done == false {
            data.textLabel?.text = dataList[indexPath.item].content
        } else {
            data.textLabel?.text = dataList[indexPath.item].content + " is Completed!"
            // the endTime should be 86400 seconds from now
            let now = NSDate()
            dataList[indexPath.item].endTime = now.dateByAddingTimeInterval(86400)
        }
        return data
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            dataList.removeAtIndex(indexPath.indexAtPosition(1))
            self.tableView.reloadData()
        }
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let index = indexPath.indexAtPosition(1)
        dataList[index].done = !(dataList[index].done)
        
        self.tableView.reloadData()
    }

    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
      return true
    }
    
}
