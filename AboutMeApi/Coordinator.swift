//
//  File.swift
//  AboutMeApi
//
//  Created by Nicholas Repaci on 9/1/21.
//

import Foundation
import UIKit

protocol Coordinator {
  var childCoordinators: [Coordinator] { get set }
  var navigationController: UINavigationController { get set }
  
  func start()
}
