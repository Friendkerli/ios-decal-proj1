//
//  AddViewController.swift
//  ToDoListApp
//
//  Created by Mac on 10/12/15.
//  Copyright © 2015 Yang Li. All rights reserved.
//

import Foundation
import UIKit

class AddViewController: UIViewController {
    
    @IBOutlet var text: UITextField!
    @IBOutlet var saveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        saveButton.addTarget(self, action: "save", forControlEvents: .TouchUpInside)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func save() {
        dataList.append(Data(s: text.text!))
    }
}