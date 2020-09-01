//
//  WordsFoundView.swift
//  WordSearch Game
//
//  Created by Vanessa Landayan on 2020-08-31.
//  Copyright © 2020 Vanessa Landayan. All rights reserved.
//

import Foundation
import UIKit

class WordFoundView: UIView {
    public init() {
        super.init(frame: .zero)
        
        self.backgroundColor = UIColor(red:0.75, green:0.99, blue:1.00, alpha:1.0)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
