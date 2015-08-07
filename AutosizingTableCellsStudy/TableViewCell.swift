//
//  TableViewCell.swift
//  AutosizingTableCellsStudy
//
//  Created by Daniel R on 8/7/15.
//  Copyright (c) 2015 Dan Ramteke Consulting Inc. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    var data: String? {
        didSet {
            label.text = data
        }
    }
    
    let label = UILabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .None
        
        
        label.textColor = UIColor.blueColor()
        label.numberOfLines = 0
        label.setTranslatesAutoresizingMaskIntoConstraints(false)
        label.lineBreakMode = .ByWordWrapping
        self.contentView.addSubview(label)
        self.contentView.addConstraints([
            NSLayoutConstraint(item: label, attribute: .Left, relatedBy: .Equal, toItem: self.contentView, attribute: .Left, multiplier: 1.0, constant: 15),
            NSLayoutConstraint(item: label, attribute: .Right, relatedBy: .Equal, toItem: self.contentView, attribute: .Right, multiplier: 1.0, constant: -15),
            NSLayoutConstraint(item: label, attribute: .Top, relatedBy: .Equal, toItem: self.contentView, attribute: .Top, multiplier: 1.0, constant: 5),
            NSLayoutConstraint(item: label, attribute: .Bottom, relatedBy: .LessThanOrEqual, toItem: self.contentView, attribute: .Bottom, multiplier: 1.0, constant: -10),
            ])
        
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}
