//
//  RestaurantCollectionViewCell.swift
//  CollectionViewChatDemo
//
//  Created by Vadim Drobinin on 5/3/17.
//  Copyright © 2017 Vadim Drobinin. All rights reserved.
//

import UIKit

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
    // Initialization code
  }

}
