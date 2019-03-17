//
//  ClothingItemKolodaView.swift
//  Hanger
//
//  Created by Naman Kedia on 3/14/19.
//  Copyright © 2019 Naman Kedia. All rights reserved.
//

import UIKit
import Koloda

class ClothingItemKolodaView: KolodaView {

    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var itemTitleLabel: UILabel!
    @IBOutlet weak var itemPriceLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
}
