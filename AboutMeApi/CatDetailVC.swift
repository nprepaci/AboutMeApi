//
//  CatDetailVCViewController.swift
//  AboutMeApi
//
//  Created by Nicholas Repaci on 9/1/21.
//

import UIKit

class CatDetailVC: UIViewController, Storyboarded {
  
  // Classes
  weak var coordinator: MainCoordinator?
  var animations = Animations()

  // General outlets
  @IBOutlet weak var imageView: UIImageView!
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var temperamentLabel: UILabel!
  @IBOutlet weak var lifespanLabel: UILabel!
  @IBOutlet weak var energyLabel: UILabel!
  @IBOutlet weak var detailLabel: UILabel!
  @IBOutlet weak var imageBorderView: UIView!
  
  // Separator lines
  @IBOutlet weak var lineViewOne: UIView!
  @IBOutlet weak var lineViewTwo: UIView!
  @IBOutlet weak var lineViewThree: UIView!
  @IBOutlet weak var lineViewFour: UIView!
  
  var image = UIImage()
  var name = ""
  var temperament = ""
  var lifespan = ""
  var energy = 0
  var details = ""
  
  override func viewDidLoad() {
        super.viewDidLoad()
    
    // Assigns data to appropriate outlets
    imageView.image = image
    nameLabel.text = name
    temperamentLabel.text = temperament
    lifespanLabel.text = lifespan
    energyLabel.text = String(energy)
    detailLabel.text = details
    
    // Sets corner radius for appropriate views
    imageView.clipsToBounds = true
    imageView.layer.cornerRadius = 15
    imageBorderView.clipsToBounds = true
    imageBorderView.layer.cornerRadius = 15
    
    // Performs animations
    animations.animateLines(view1: lineViewOne, view2: lineViewTwo, view3: lineViewThree, view4: lineViewFour)
    
    // Sets navigation bar title
    self.title = "Cat Details"
    
    }
}
