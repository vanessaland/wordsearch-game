//
//  ItemCell.swift
//  WordSearch Game
//
//  Created by Vanessa Landayan on 2020-08-27.
//  Copyright © 2020 Vanessa Landayan. All rights reserved.
//

import UIKit

class ItemCell: UICollectionViewCell {
    
    
    var textLabel = UILabel(frame: CGRect(x: 30.0, y: 15.0, width: 50.0, height: 45.0))
    
    func setupSubViews() {
        self.addSubview(textLabel)
        textLabel.textColor = UIColor(red:0.00, green:0.66, blue:0.91, alpha:1.0)
        textLabel.font = UIFont(name: "GillSans-Bold", size: 25.0)!
        self.layer.cornerRadius = 10
    }

    func setData(text: String) {
        self.textLabel.text = text
    }
}
