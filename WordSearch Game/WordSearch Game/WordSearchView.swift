//
//  WordSearchView.swift
//  WordSearch Game
//
//  Created by Vanessa Landayan on 2020-08-27.
//  Copyright © 2020 Vanessa Landayan. All rights reserved.
//

import Foundation
import UIKit

class WordSearchView: UIView {
    
    /// Dimensions
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    let padding: CGFloat = 16.0
    
    /// Colors
    let seaBlue = UIColor(red: 0, green: 0.8196, blue: 0.8784, alpha: 1.0) /* #00d1e0 */
    
    /// Grid CollectionView
    var collectionView = UICollectionView(frame: UIScreen.main.bounds, collectionViewLayout: UICollectionViewFlowLayout())
    
    public init() {
        super.init(frame: .zero)
        setupView()
        
        let collectionViewSize = CGRect(x: Double(padding/2), y: Double(screenHeight-screenWidth)/2.0, width: Double(screenWidth - padding), height: Double(screenWidth))
        collectionView.frame = collectionViewSize
        collectionView.backgroundColor = seaBlue
        collectionView.layer.cornerRadius = 10
    }
    
    func setupView() {
        
        collectionView.register(ItemCell.self, forCellWithReuseIdentifier: "ItemCell")
        
        self.backgroundColor = seaBlue
        
        addSubview(collectionView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
