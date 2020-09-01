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
    
    /// Font
    var textColor = UIColor(red:0.00, green:0.66, blue:0.91, alpha:1.0)
    var font = UIFont(name: "GillSans-Bold", size: 25.0)!
    
    /// Labels
    var label1 = UILabel(frame: CGRect(x: 0.0, y: 20.0, width: 100.0, height: 45.0))
    var label2 = UILabel(frame: CGRect(x: 0.0, y: 20.0, width: 100.0, height: 45.0))
    var label3 = UILabel(frame: CGRect(x: 0.0, y: 20.0, width: 100.0, height: 45.0))
    var label4 = UILabel(frame: CGRect(x: 0.0, y: 20.0, width: 100.0, height: 45.0))
    var label5 = UILabel(frame: CGRect(x: 0.0, y: 20.0, width: 100.0, height: 45.0))
    var label6 = UILabel(frame: CGRect(x: 0.0, y: 20.0, width: 100.0, height: 45.0))
    
    /// Grid CollectionView
    var collectionView = UICollectionView(frame: UIScreen.main.bounds, collectionViewLayout: UICollectionViewFlowLayout())
    
    lazy var wordsFoundStackView:UIStackView = {
        let s = UIStackView(frame: self.bounds)
        s.axis = .horizontal
        s.distribution = .equalSpacing
        s.alignment = .fill
        s.spacing = 10.0
        s.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        s.addArrangedSubview(label1)
        s.addArrangedSubview(label2)
        s.addArrangedSubview(label3)
        s.addArrangedSubview(label4)
        s.addArrangedSubview(label5)
        s.addArrangedSubview(label6)
        
        return s
    }()

    lazy var mainStackView:UIStackView = {
        let s = UIStackView(frame: self.bounds)
        s.axis = .vertical
        s.distribution = .fill
        s.alignment = .fill
        s.spacing = 50.0
        s.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        s.backgroundColor = UIColor(red:0.75, green:0.99, blue:1.00, alpha:1.0)
        s.addArrangedSubview(collectionView)
        s.addArrangedSubview(wordsFoundStackView)
    
        return s
    }()
    
    public init() {
        super.init(frame: .zero)
        setupView()
        
        label1.text = "Words Found"
        label2.text = "Hello"
        label3.text = "Hello"
        label4.text = "Hello"
        label5.text = "Hello"
        label6.text = "Hello"
        
        label1.textColor = .black
        label2.textColor = textColor
        label3.textColor = textColor
        label4.textColor = textColor
        label5.textColor = textColor
        label6.textColor = textColor
        
        label1.font = font
        label2.font = font
        label3.font = font
        label4.font = font
        label5.font = font
        label6.font = font
        
        collectionView.backgroundColor = UIColor(red:0.78, green:0.91, blue:1.00, alpha:1.0)
        collectionView.layer.cornerRadius = 10
        
    }
    
    func setupView() {
        
        collectionView.register(ItemCell.self, forCellWithReuseIdentifier: "ItemCell")
        
        self.backgroundColor = UIColor(red:0.82, green:0.82, blue:1.00, alpha:1.0)
        addSubview(mainStackView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
