//
//  WordSearchViewController.swift
//  WordSearch Game
//
//  Created by Vanessa Landayan on 2020-08-27.
//  Copyright © 2020 Vanessa Landayan. All rights reserved.
//

import Foundation
import UIKit

class WordSearchViewController: UIViewController, UICollectionViewDelegate {

    let dataArray = ["A","B","C","D","E","F","G","H","I", "K",
                     "A","B","C","D","E","F","G","H","I", "K",
                    "A","B","C","D","E","F","G","H","I", "K",
                    "A","B","C","D","E","F","G","H","I", "K",
                    "A","B","C","D","E","F","G","H","I", "K",
                    "A","B","C","D","E","F","G","H","I", "K",
                    "A","B","C","D","E","F","G","H","I", "K",
                    "A","B","C","D","E","F","G","H","I", "K",
                    "A","B","C","D","E","F","G","H","I", "K",
                    "A","B","C","D","E","F","G","H","I", "K"]
    
    var estimateWidth = 160.0
    var cellMarginSize = 16.0
    var cellsInARow = 10.0
    var cellsInAColumn = 10.0
    
    let seaBlue = UIColor(red: 0, green: 0.8196, blue: 0.8784, alpha: 1.0) /* #00d1e0 */
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let flowLayout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: self.view.bounds, collectionViewLayout: flowLayout)
        collectionView.register(ItemCell.self, forCellWithReuseIdentifier: "ItemCell")
        
        // View Setup
        self.view.backgroundColor = seaBlue
        
        // Set Delegates
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = seaBlue

        self.view.addSubview(collectionView)
    }
    
    override func viewDidLayoutSubviews() {

    }
    
}

extension WordSearchViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.dataArray.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCell", for: indexPath) as! ItemCell
        cell.backgroundColor = UIColor.red
        cell.textLabel.textColor = UIColor.green
        return cell
    }
}

extension WordSearchViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = self.calculateWidth()
        return CGSize(width: 20, height: 20)
    }
    
    func calculateWidth() -> CGFloat {
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        let marginSpace = (cellMarginSize * cellsInARow) - 1
        
        let width = (Double(screenWidth) - marginSpace)/cellsInARow
        return CGFloat(width)
    }
}
