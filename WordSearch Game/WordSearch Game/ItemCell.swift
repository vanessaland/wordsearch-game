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
        textLabel.textColor = UIColor.black
        self.layer.cornerRadius = 10
    }

    func setData(text: String) {
        self.textLabel.text = text
    }
}
