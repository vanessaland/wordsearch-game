//
//  ItemCell.swift
//  WordSearch Game
//
//  Created by Vanessa Landayan on 2020-08-27.
//  Copyright © 2020 Vanessa Landayan. All rights reserved.
//

import UIKit

class ItemCell: UICollectionViewCell {
    
    var textLabel = UILabel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func setData(text: String) {
        self.textLabel.text = text
    }
}
