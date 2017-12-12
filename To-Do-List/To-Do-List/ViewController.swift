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
        // Create class for cells + use cell identifier
        collectionView?.register(TaskCell.self, forCellWithReuseIdentifier: "cellId")
        
    }
    
    // Number of cells
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    // Index for cells
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // method for cell had a name + index at indexPath
        let taskCell =  collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! TaskCell
        return taskCell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
}

