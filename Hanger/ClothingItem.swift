//
//  ClothingItem.swift
//  Hanger
//
//  Created by Naman Kedia on 3/17/19.
//  Copyright © 2019 Naman Kedia. All rights reserved.
//

import Foundation
import UIKit

class ClothingItem {
    var dressName: String
    var price: Double
    var mainImage: UIImage
    var allImages: [UIImage]
    var websiteLink: NSURL
    
    init(dressName: String, price: Double, mainImage: UIImage, allImages: [UIImage], websiteLink: NSURL) {
        self.dressName = dressName
        self.price = price
        self.mainImage = mainImage
        self.allImages = allImages
        self.websiteLink = websiteLink
    }
}


