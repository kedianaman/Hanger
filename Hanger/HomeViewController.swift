//
//  ViewController.swift
//  Hanger
//
//  Created by Naman Kedia on 3/14/19.
//  Copyright © 2019 Naman Kedia. All rights reserved.
//

import UIKit
import Koloda

class HomeViewController: UIViewController, KolodaViewDataSource, KolodaViewDelegate {
    
    // MARK: Properties
    @IBOutlet weak var kolodaView: KolodaView!
    
    var tops = [UIImage(named: "dress"), UIImage(named: "dress"), UIImage(named: "dress"), UIImage(named: "dress")]
    
    // MARK: View Controller LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        kolodaView.dataSource = self
        kolodaView.delegate = self
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "GiveYouGlory", size: 30)!, NSAttributedString.Key.foregroundColor: UIColor(red: 236/255.0, green: 64/255.0, blue: 122/255.0, alpha: 1.0)]
        

        self.modalTransitionStyle = UIModalTransitionStyle.flipHorizontal
    }
    
    // MARK: Delegate
    func koloda(_ koloda: KolodaView, viewForCardAt index: Int) -> UIView {
        if let customView = Bundle.main.loadNibNamed("ClothingItemView", owner: self, options: nil)?[0] as? ClothingItemKolodaView {
            customView.itemImageView.image = tops[index]
            customView.itemTitleLabel.text = "Ribbed Tie-Front Top"
            customView.itemPriceLabel.text = "$15"
            customView.layer.cornerRadius = 18
            customView.clipsToBounds = true
            //            addShadow(view: customView)
            return customView
            
        } else {
            return UIImageView(image: tops[Int(index)])
        }
        
    }
    
    func kolodaSpeedThatCardShouldDrag(_ koloda: KolodaView) -> DragSpeed {
        return .default
    }
    
    func kolodaSwipeThresholdRatioMargin(_ koloda: KolodaView) -> CGFloat? {
        return 0.5
    }
    
    func koloda(_ koloda: KolodaView, didSwipeCardAt index: Int, in direction: SwipeResultDirection) {
        print ("swiped \(index) dress in direction \(direction)")
    }
    
    func koloda(_ koloda: KolodaView, allowedDirectionsForIndex index: Int) -> [SwipeResultDirection] {
        return [.left, .right, .topRight, .topLeft, .bottomLeft, .bottomRight]
    }

    
    // MARK: DataSource
    func kolodaNumberOfCards(_ koloda: KolodaView) -> Int {
        return tops.count
    }
    
    // MARK: IB Actions

    @IBAction func dislikePressed(_ sender: Any) {
        kolodaView.swipe(.topLeft)
    }
    
    @IBAction func likePressed(_ sender: Any) {
        kolodaView.swipe(.topRight)

    }
    
//    func addShadow(view: UIView) {
//        let shadowPath = UIBezierPath(roundedRect: view.bounds, cornerRadius: 18)
//        view.layer.masksToBounds = false
//        view.layer.shadowColor = UIColor.black.cgColor
//        view.layer.shadowOffset = CGSize(width: 0, height: 2)
//        view.layer.shadowOpacity = 0.2
//        view.layer.shadowRadius = 2
//        view.layer.shadowPath = shadowPath.cgPath
//    }


}



