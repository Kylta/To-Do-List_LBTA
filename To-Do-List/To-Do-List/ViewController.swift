//
//  ViewController.swift
//  To-do-List
//
//  Created by Christophe Bugnon on 12/12/2017.
//  Copyright © 2017 Christophe Bugnon. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "To-Do List"
        collectionView?.backgroundColor = .white
        // For scroll cells on vertical
        collectionView?.alwaysBounceVertical =  true
        // add register cells at collectionView
        collectionView?.register(TaskCell.self, forCellWithReuseIdentifier: "cellId")
        // add register header at collectionView
        collectionView?.register(TaskHeader.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "headerId")
        
    }
    
    var tasks = ["Buy groceries", "Fill up gas", "Pay bills"]
    
    // Number of cells
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tasks.count
    }
    
    // Index for cells
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // method for cell had a name + index at indexPath
        let taskCell =  collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! TaskCell
        taskCell.nameLabel.text = tasks[indexPath.item]
        return taskCell
    }
    
    // Size of cells (items)
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    // Method create for header with index
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        return collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "headerId", for: indexPath)
    }
    
    // Method for header size
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 100)
    }
    
}

