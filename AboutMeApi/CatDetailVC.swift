//
//  CatDetailVCViewController.swift
//  AboutMeApi
//
//  Created by Nicholas Repaci on 9/1/21.
//

import UIKit

class CatDetailVC: UIViewController, Storyboarded {
  var coordinator: MainCoordinator?

  @IBOutlet weak var imageView: UIImageView!
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var temperamentLabel: UILabel!
  @IBOutlet weak var lifespanLabel: UILabel!
  @IBOutlet weak var energyLabel: UILabel!
  @IBOutlet weak var detailLabel: UILabel!
  
  var image = UIImage()
  var name = ""
  var temperament = ""
  var lifespan = ""
  var energy = 0
  var details = ""
  
  
  override func viewDidLoad() {
        super.viewDidLoad()
    
    imageView.image = image
    nameLabel.text = name
    temperamentLabel.text = temperament
    lifespanLabel.text = lifespan
    energyLabel.text = String(energy)
    detailLabel.text = details
    
    // Allows setting of corner radius
    imageView.clipsToBounds = true
    imageView.layer.cornerRadius = 15

    }
  
    // MARK: - Navigation

}
