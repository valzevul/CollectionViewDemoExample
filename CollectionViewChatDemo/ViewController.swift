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
    return cell
  }

}

class ViewController: UIViewController {
  @IBOutlet weak var collectionView: UICollectionView! {
    didSet {
      collectionView.delegate = self
      collectionView.dataSource = self
    }
  }
  
  let data = [RestaurantDescription]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

