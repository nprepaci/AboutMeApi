//
//  MainCoordinator.swift
//  AboutMeApi
//
//  Created by Nicholas Repaci on 9/1/21.
//

import Foundation
import UIKit

// Coordinator class that contains navigation functions

class MainCoordinator: Coordinator {
  var childCoordinators = [Coordinator]()
  var navigationController: UINavigationController
  
  init(navigationController: UINavigationController) {
    self.navigationController = navigationController
  }
  
  func start() {
    let vc = MainVC.instantiate()
    vc.coordinator = self
    navigationController.pushViewController(vc, animated: false)
    }
  
  // Navigates to CatDetailsVC
  func catDetails(details: String, name: String, temperament: String, lifespan: String, energy: Int, image: UIImage) {
    let vc = CatDetailVC.instantiate()
    vc.coordinator = self
    vc.image = image
    vc.details = details
    vc.name = name
    vc.temperament = temperament
    vc.energy = energy
    vc.lifespan = lifespan
    navigationController.pushViewController(vc, animated: true)
  }
  
  // Navigates to UserProfileVC
  func userProfile() {
    let vc = UserProfileVC.instantiate()
    vc.coordinator = self
    navigationController.pushViewController(vc, animated: true)
  }
}
