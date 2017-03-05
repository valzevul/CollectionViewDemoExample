//
//  ViewController.swift
//  CollectionViewChatDemo
//
//  Created by Vadim Drobinin on 27/2/17.
//  Copyright © 2017 Vadim Drobinin. All rights reserved.
//

import UIKit

// In order to store restaurants in memory we create
// a structure to populate it with demo data
struct RestaurantDescription {
  let name: String // Restaurant Name
  let imageName: String // Header Image Name
  let address: String // Restaurant Address
  let type: String // Restaurant Type
  let description: String // Restaurant Description
  let providerName: String // Review Provider Name
  let providerImageName: String // Review Provider Image Name
}

// To be notified about touching separate cells
// we should conform to UICollectionViewDelegate
extension ViewController: UICollectionViewDelegate {
  
}

// To link our UICollectionView with the model,
// we use UICollectionViewDataSource
// (similar to UITableView examples)
extension ViewController: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return data.count // number of demo objects
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
    
    let demo3 = RestaurantDescription(name: "Thai Identity Unknown", imageName: "demo3", address: "730 Polksmthg Street", type: "Thai Restaurant", description: "Wonderful place and enjoyable food", providerName: "TripAdvisor", providerImageName: "trip")
    
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

