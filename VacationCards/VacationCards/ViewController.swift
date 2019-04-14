//
//  ViewController.swift
//  VacationCards
//
//  Created by Anh Le on 4/13/19.
//  Copyright © 2019 Anh Le. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let locationName = ["Magic Kingdom", "Statue of Liberty", "Universal Studio Hollywood", "White House"]
    
    let locationImage = [UIImage(named: "Magic"), UIImage(named: "Statue"), UIImage(named: "Universal"), UIImage(named: "WhiteHouse")]
    
    let locationAddress = ["1180 Seven Seas Dr,Lake Buena Vista, FL 32830", "New York, NY 10004", "100 Universal City Plaza, Universal City, CA 91608", "1600 Pennsylvania Ave NW, Washington, DC 20500"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return locationImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.locationName.text = locationName[indexPath.row]
        cell.locationImage.image = locationImage[indexPath.row]
        cell.locationAddress.text = locationAddress[indexPath.row]
        
        //This creates the shadows and modifies the cards a little bit
        cell.contentView.layer.cornerRadius = 4.0
        cell.contentView.layer.borderWidth = 1.0
        cell.contentView.layer.borderColor = UIColor.clear.cgColor
        cell.contentView.layer.masksToBounds = false
        cell.layer.shadowColor = UIColor.gray.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 1.0)
        cell.layer.shadowRadius = 4.0
        cell.layer.shadowOpacity = 1.0
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
        
        
        return cell
    }


}

