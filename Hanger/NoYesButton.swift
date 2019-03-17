//
//  ClickDislikeButton.swift
//  Hanger
//
//  Created by Naman Kedia on 3/17/19.
//  Copyright © 2019 Naman Kedia. All rights reserved.
//

import UIKit

class NoYesButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUp()
    }
    
    func setUp() {
        layer.cornerRadius = self.bounds.width/2
        self.backgroundColor = UIColor.white
    }
    
}
