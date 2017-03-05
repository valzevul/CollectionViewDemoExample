//
//  ViewController.swift
//  CollectionViewChatDemo
//
//  Created by Vadim Drobinin on 27/2/17.
//  Copyright © 2017 Vadim Drobinin. All rights reserved.
//

import UIKit

struct RestaurantDescription {
  let name: String
  let imageName: String
  let address: String
  let type: String
  let description: String
  let providerName: String
  let providerImageName: String
}

extension ViewController: UICollectionViewDelegate {
  
}

extension ViewController: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return data.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RestaurantCollectionViewCell", for: indexPath) as! RestaurantCollectionViewCell
    let demo = data[indexPath.row]
    
    cell.restaurantImage.image = UIImage(named: demo.imageName)
    cell.restaurantNameLabel.text = demo.name
    cell.restaurantTypeLabel.text = demo.type
    cell.restaurantAddressLabel.text = demo.address
    cell.providerNameLabel.text = demo.providerName
    cell.providerImage.image = UIImage(named: demo.providerImageName)
    cell.providerDescriptionLabel.text = demo.description
    return cell
  }

}

class ViewController: UIViewController {
  @IBOutlet weak var collectionView: UICollectionView! {
    didSet {
      collectionView.delegate = self
      collectionView.dataSource = self
      collectionView.register(UINib(nibName: "RestaurantCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "RestaurantCollectionViewCell")

    }
  }
  
  var data = [RestaurantDescription]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let demo1 = RestaurantDescription(name: "Lers Ros Thai", imageName: "demo1", address: "730 Larkin Street", type: "Thai Restaurant", description: "Amazing Flavors! Great food!", providerName: "Foursquare", providerImageName: "frsq")
    
    let demo2 = RestaurantDescription(name: "Sai Jai Thai", imageName: "demo2", address: "771 O'Farrell Street", type: "Thai Restaurant", description: "Great service too, amazingly friendly.", providerName: "Google", providerImageName: "google")
    
    let demo3 = RestaurantDescription(name: "Thai Identity Unknown", imageName: "demo3", address: "730 Polksmthg Street", type: "Thai Restaurant", description: "Wonderful place and enjoyable food", providerName: "TripAdviser", providerImageName: "trip")
    
    data.append(demo1)
    data.append(demo2)
    data.append(demo3)

    collectionView.reloadData()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

