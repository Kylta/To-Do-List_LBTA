//
//  TaskCell.swift
//  To-do-List
//
//  Created by Christophe Bugnon on 12/12/2017.
//  Copyright © 2017 Christophe Bugnon. All rights reserved.
//

import UIKit

// Class create for use on CollectionView register
class TaskCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // Name for item in cells
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Sample Task"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setupViews() {
        
        addSubview(nameLabel)
        // Constraint for cells
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: [], metrics: nil, views: ["v0": nameLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: [], metrics: nil, views: ["v0": nameLabel]))
        
    }
}
