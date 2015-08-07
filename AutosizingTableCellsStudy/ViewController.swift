//
//  ViewController.swift
//  AutosizingTableCellsStudy
//
//  Created by Daniel R on 8/7/15.
//  Copyright (c) 2015 Dan Ramteke Consulting Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let tableView = UITableView(frame: CGRectZero, style: UITableViewStyle.Plain)

    let cellData = [
        "a short cell",
        "a very long cell with lots of text so much text that I can hardly read it. Wow. Wow. One two three. Itchy knee son she.",
        "a medium cellular data plan"
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.setTranslatesAutoresizingMaskIntoConstraints(false)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 100
        tableView.registerClass(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        self.view.addSubview(tableView)
        self.view.addConstraints([
            NSLayoutConstraint(item: tableView, attribute: .Left, relatedBy: .Equal, toItem: self.view, attribute: .Left, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: tableView, attribute: .Right, relatedBy: .Equal, toItem: self.view, attribute: .Right, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: tableView, attribute: .Top, relatedBy: .Equal, toItem: self.view, attribute: .Top, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: tableView, attribute: .Bottom, relatedBy: .Equal, toItem: self.view, attribute: .Bottom, multiplier: 1.0, constant: 0),
            ])
    }
    
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        cell.layoutIfNeeded()
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TableViewCell") as! TableViewCell
        cell.data = cellData[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellData.count
    }
    
    
    
}

