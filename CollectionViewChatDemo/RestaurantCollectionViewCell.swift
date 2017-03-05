//
//  RestaurantCollectionViewCell.swift
//  CollectionViewChatDemo
//
//  Created by Vadim Drobinin on 5/3/17.
//  Copyright © 2017 Vadim Drobinin. All rights reserved.
//

import UIKit

extension UIView {
  
  @IBInspectable var shadow: Bool {
    get {
      return layer.shadowOpacity > 0.0
    }
    set {
      if newValue == true {
        self.addShadow()
      }
    }
  }
  
  @IBInspectable var cornerRadius: CGFloat {
    get {
      return self.layer.cornerRadius
    }
    set {
      self.layer.cornerRadius = newValue
      
      // Don't touch the masksToBound property if a shadow is needed in addition to the cornerRadius
      if shadow == false {
        self.layer.masksToBounds = true
      }
    }
  }
  
  
  func addShadow(shadowColor: CGColor = UIColor.black.cgColor,
                 shadowOffset: CGSize = CGSize(width: 1.0, height: 2.0),
                 shadowOpacity: Float = 0.4,
                 shadowRadius: CGFloat = 3.0) {
    layer.shadowColor = shadowColor
    layer.shadowOffset = shadowOffset
    layer.shadowOpacity = shadowOpacity
    layer.shadowRadius = shadowRadius
  }
}

class RestaurantCollectionViewCell: UICollectionViewCell {

  @IBOutlet weak var restaurantImage: UIImageView!
  @IBOutlet weak var restaurantNameLabel: UILabel!
  @IBOutlet weak var restaurantAddressLabel: UILabel!
  @IBOutlet weak var restaurantTypeLabel: UILabel!
  
  @IBOutlet weak var providerImage: UIImageView!
  @IBOutlet weak var providerNameLabel: UILabel!
  @IBOutlet weak var providerDescriptionLabel: UILabel!
  
  override func awakeFromNib() {
    super.awakeFromNib()
  }

}
