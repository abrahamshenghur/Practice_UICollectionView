//
//  ViewController.swift
//  Practice_UICollectionView
//
//  Created by Abraham on 7/26/21.
//  Copyright © 2021 Abraham Shenghur. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    private let cellReuseIdentifier = "collectionCell"
    
    let leftAndRightPaddings: CGFloat = 80.0
    let numberOfItemsPerRow: CGFloat = 7.0
    let screenSize: CGRect = UIScreen.main.bounds
    
    var items = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let flowLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: flowLayout)
        collectionView.register(Cell.self, forCellWithReuseIdentifier: cellReuseIdentifier)
        collectionView.showsVerticalScrollIndicator = false
        collectionView.backgroundColor = UIColor.white
        collectionView.dataSource = self
        collectionView.delegate = self
        
        self.view.addSubview(collectionView)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return items.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellReuseIdentifier, for: indexPath) as! Cell
        cell.backgroundColor = UIColor.green
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        let width = (screenSize.width-leftAndRightPaddings)/numberOfItemsPerRow
        
        return CGSize(width: width, height: width)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets
    {
        return UIEdgeInsets(top: 20, left: 8, bottom: 5, right: 8)
    }
}

