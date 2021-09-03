//
//  UserProfileVC.swift
//  AboutMeApi
//
//  Created by Nicholas Repaci on 9/2/21.
//

import UIKit

class UserProfileVC: UIViewController, Storyboarded {
  
  // Coordinator class reference
  weak var coordinator: MainCoordinator?

  //General outlets
  @IBOutlet weak var profileImageView: UIImageView!
  @IBOutlet weak var recipeDetails: UILabel!
  @IBOutlet weak var chartTrackerDetails: UILabel!
  @IBOutlet weak var itunesDetails: UILabel!
  @IBOutlet weak var mtaLabel: UILabel!
  @IBOutlet weak var pepsiLabel: UILabel!
  @IBOutlet weak var tmhccLabel: UILabel!
  @IBOutlet weak var trainDetails: UILabel!
  
  // Class variables
  var storedProfileData = ProfileData()
  
  override func viewDidLoad() {
        super.viewDidLoad()

    // Creates circle profile image
    profileImageView.clipsToBounds = true
    profileImageView.layer.cornerRadius = 50
    
    
    // Sets navigation title
    self.title = "CatBook Profile"
    
    // Assigns static data to labels
    recipeDetails.text = storedProfileData.recipeTrackerData
    chartTrackerDetails.text = storedProfileData.chartTrackerData
    itunesDetails.text = storedProfileData.iosAppData
    mtaLabel.text = storedProfileData.trainTrackerData
    
    
    pepsiLabel.text = storedProfileData.pepsiExp
    tmhccLabel.text = storedProfileData.tokioMarineExp
    
    }
}
