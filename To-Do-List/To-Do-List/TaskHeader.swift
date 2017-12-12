//
//  TaskHeader.swift
//  To-do-List
//
//  Created by Christophe Bugnon on 12/12/2017.
//  Copyright © 2017 Christophe Bugnon. All rights reserved.
//

import UIKit

// Class create for use on CollectionView register
class TaskHeader: BaseCell {

    // Name for item in cells
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Header"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func setupViews() {
        
        addSubview(nameLabel)
        // Constraint for cells
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-8-[v0]-8-|", options: [], metrics: nil, views: ["v0": nameLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-8-[v0]-8-|", options: [], metrics: nil, views: ["v0": nameLabel]))
        
    }
}
