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
    
    /// Alphabet for random letters
    var alpha = ["A","B","C","D","E","F","G",
                 "H","I","J","K","L","M","N",
                 "O","P","Q","R","S","T","U",
                 "V","W","X","Y","Z"]
    
    /// Words to Find: Swift, Kotlin, ObjectiveC, Variable, Java, Mobile.
    var swift = ["S","W","I","F","T"] //5
    var kotlin = ["K","O","T","L","I", "N"] //6
    var objectiveC = ["O","B","J","E","C","T","I","V","E","C"] //10
    var variable = ["V","A","R","I","A","B","L","E"] //8
    var java = ["J","A","V","A"] //4
    var mobile = ["M","O","B","I","L","E"] //6
    
    /// Size of Screen
    let screenSize: CGRect = UIScreen.main.bounds
    var screenWidth: CGFloat = 0.0
    
    var estimateWidth: CGFloat = 160.0
    var cellMarginSize: CGFloat = 5.0
    var cellsPerSection: CGFloat = 10.0
    
    let cellSpacing: CGFloat = 5.0
    
    
    var change: Bool = true
    var currentWord: Int = 1
    
    var spacesLeftInRow = 11
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        let view = WordSearchView()
        self.view = view

        // Set Delegates
        view.collectionView.delegate = self
        view.collectionView.dataSource = self
        
        screenWidth = screenSize.width
    
    }
}

extension WordSearchViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCell", for: indexPath) as! ItemCell
        cell.backgroundColor = UIColor.white
        cell.setupSubViews()
    
        if change {
            currentWord += 1
        }
        
        if spacesLeftInRow == 0 {
            spacesLeftInRow = 11
        }
        
        func alphabet() {
            if !alpha.isEmpty {
                alpha.shuffle()
                cell.setData(text: alpha[0])
                spacesLeftInRow -= 1
                NSLog("\(spacesLeftInRow)")
                alpha.removeFirst()
                change = true
            } else {
                alpha += ["A","B","C","D","E","F","G",
                "H","I","J","K","L","M","N",
                "O","P","Q","R","S","T","U",
                "V","W","X","Y","Z"]
                alpha.shuffle()
                cell.setData(text: alpha[0])
                spacesLeftInRow -= 1
                NSLog("\(spacesLeftInRow)")
                alpha.removeFirst()
                change = true
            }
        }
        
        switch (currentWord) {
            
        case 1:
            if !swift.isEmpty {
                cell.setData(text: swift[0])
                spacesLeftInRow -= 1
                NSLog("\(spacesLeftInRow)")
                swift.removeFirst()
                change = false
            } else {
                change = true
                alphabet()
            }
        case 2:
            if !kotlin.isEmpty {
                cell.setData(text: kotlin[0])
                spacesLeftInRow -= 1
                NSLog("\(spacesLeftInRow)")
                kotlin.removeFirst()
                change = false
            } else {
                change = true
                alphabet()
            }
                
        case 3:
            if !objectiveC.isEmpty {
                cell.setData(text: objectiveC[0])
                spacesLeftInRow -= 1
                NSLog("\(spacesLeftInRow)")
                objectiveC.removeFirst()
                change = false
            } else {
                change = true
                alphabet()
            }
        case 4:
            if !variable.isEmpty {
                cell.setData(text: variable[0])
                spacesLeftInRow -= 1
                NSLog("\(spacesLeftInRow)")
                variable.removeFirst()
                change = false
            } else {
                change = true
                alphabet()
            }
        case 5:
            if !java.isEmpty {
                cell.setData(text: java[0])
                spacesLeftInRow -= 1
                NSLog("\(spacesLeftInRow)")
                java.removeFirst()
                change = false
            } else {
                change = true
                alphabet()
            }
        case 6:
            if !mobile.isEmpty {
                cell.setData(text: mobile[0])
                spacesLeftInRow -= 1
                NSLog("\(spacesLeftInRow)")
                mobile.removeFirst()
                change = false
            } else {
                change = true
                alphabet()
            }
        default:
            alphabet()
        }
                
        return cell
    }
}

extension WordSearchViewController: UICollectionViewDelegateFlowLayout {
        
    /// This function sets the size of the individual cells
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let space = cellSpacing * (cellsPerSection + 1)
        let width = (collectionView.frame.width-space)/cellsPerSection
        let height = (collectionView.frame.height-space)/cellsPerSection
        
        return CGSize(width: width, height: height)
    }
    
    /// This function sets the spacing between rows
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return  cellSpacing
    }
    
    /// This function sets the spacing between columns
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }

    /// This function changes the color of the cell when selected
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as? ItemCell
        let newBackgroundColor: UIColor = (cell?.backgroundColor == .white) ? UIColor(red:1.00, green:0.80, blue:0.95, alpha:1.0) : .white
        let newTextColor: UIColor = (cell?.textLabel.textColor == UIColor(red:0.00, green:0.66, blue:0.91, alpha:1.0) ? .white : UIColor(red:0.00, green:0.66, blue:0.91, alpha:1.0))
        
        cell?.textLabel.textColor = newTextColor
        cell?.backgroundColor = newBackgroundColor
    }
    
}
