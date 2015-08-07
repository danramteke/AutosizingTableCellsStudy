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
        
        "At such a scale, even the best existing technologies wouldn’t have made this iMac possible. So we did the impossible — developing a display with the performance to light up 14.7 million pixels, reducing energy consumption while maintaining our high standard for brightness, and advancing image quality for the most striking contrast ever.",
        "To create the astonishingly thin silhouette of iPad Air 2, we started by redesigning the Retina display, fusing what had been three layers into one. Not only did this make the display thinner, it made it better, with more vivid colors and greater contrast. Then we added an antireflective coating, giving iPad Air 2 the least reflective display of any tablet in the world.",
        "a short cell",
        "The little plentiful manikins skipping around in collars and tail'd coats\nI am aware who they are, (they are positively not worms or fleas,)\nI acknowledge the duplicates of myself, the weakest and shallowest is deathless with me,\nWhat I do and say the same waits for them,\nEvery thought that flounders in me the same flounders in them."
        
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
        // this seems to be the important line.
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

