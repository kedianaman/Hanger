//
//  LikedClothesViewController.swift
//  Hanger
//
//  Created by Naman Kedia on 3/17/19.
//  Copyright © 2019 Naman Kedia. All rights reserved.
//

import UIKit

class LikedClothesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    var clothingItems = [ClothingItem]()
   
    
    //MARK: IB Outlets
    @IBOutlet weak var itemsCollectionView: UICollectionView!
    
    //MARK: View Controller Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        let item = ClothingItem(title: "Sparkly Scoop Back Seamless BodySuit", price: 34, mainImage: UIImage(named: "dress2")!, allImages: [], websiteLink: NSURL(fileURLWithPath: "https://www.urbanoutfitters.com/shop/out-from-under-tiffany-sparkly-scoop-back-seamless-bodysuit"))
        clothingItems = [item, item, item, item]
        // Do any additional setup after loading the view.
    }
    
    //MARK: CollectionView Data Source
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return clothingItems.count
    }
    
    //MARK: CollectionView Delegate
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LikedItemCellID", for: indexPath) as? LikedItemCollectionViewCell {
            let item = clothingItems[indexPath.row]
            cell.itemImage.image = item.mainImage
            cell.itemTitleLabel.text = item.title
            cell.priceLabel.text = "$\(item.price)"
            return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (view.bounds.width - 30) / 2.0
        let height = 2.24 * width
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout
        collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10.0
    }
    


}
