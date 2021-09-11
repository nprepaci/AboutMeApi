//
//  ViewController.swift
//  AboutMeApi
//
//  Created by Nicholas Repaci on 9/1/21.
//

import UIKit

class MainVC: UIViewController, Storyboarded {
  weak var coordinator: MainCoordinator?

  // General outlets
  @IBOutlet weak var tableView: UITableView!
  @IBOutlet weak var profileButton: UIButton!
  @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
  
  // Classes
  var api = API()
  var storedData: ResponseData = ResponseData()
  var storedImages = [UIImage]()
  
  // Stores index of tapped row
  var indexOfCurrentRow = Int()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Hides activity indicator when .stop is called
    activityIndicator.hidesWhenStopped = true
    
    //rounds corners of bar button item specific to its frame of 35 x 35
    //E.g. 35/50 == 0.7, so 0.7 * 25 == 17.5
    profileButton.imageView?.layer.cornerRadius = 17.5
    
    //Sets title of nav bar
    self.title = "CatBook"
    tableView.dataSource = self
    tableView.delegate = self
    
    // Loads API data and reloads tableview once completion handler is run
    // Takes argument of activity indicator - api func handles activity indicator stop event once completed or failed
    api.loadData(activityIndicator: activityIndicator) { ResponseData in
      self.storedData = self.api.storedData
      
      // Appends images to separate array as UIImage. This is done for cell loading performance purposes
      for i in 0..<self.storedData.count {
        self.storedImages.append(UIImage(data: try! Data(contentsOf: URL(string: self.storedData[i].image?.url ?? "") ?? URL.init(fileURLWithPath: "")))!)
      }
      self.tableView.reloadData()
      
    }
  }
  
  @IBAction func profileImageClicked(_ sender: Any) {
    // Method call in coordinator class
    // Navigates to user profile when the profile image is clicked
    coordinator?.userProfile()
  }
}


// MARK: - TABLEVIEW EXTENSIONS

extension MainVC: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    // Passes index of current row to variable
    // Used to pass array data at specified index to cat detail view
    indexOfCurrentRow = indexPath.row
    
    // Navigates to CatDetailVC, passes necessary information
    coordinator?.catDetails(details: storedData[indexOfCurrentRow].description, name: storedData[indexOfCurrentRow].name, temperament: storedData[indexOfCurrentRow].temperament, lifespan: storedData[indexOfCurrentRow].lifeSpan, energy: storedData[indexOfCurrentRow].energyLevel, image: storedImages[indexOfCurrentRow])
    
    // Deselects row after click
    tableView.deselectRow(at: indexPath, animated: true)
  }
}

extension MainVC: UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return storedData.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    // Using custom table view cell, so as! CustomTableCell appended
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableCell
    
    // Rounds edges of tableviewcell's image label
    cell.outerImageView.clipsToBounds = true
    cell.outerImageView.layer.cornerRadius = 25
    
    // Old code, unoptimized version of image loading in table view
    //cell.cellImage?.image = UIImage(data: try! Data(contentsOf: URL(string: storedData[indexPath.row].image?.url ?? "") ?? URL.init(fileURLWithPath: "")))
    
    // Moved the image data to unique array where it is pre-converted to UIImage
    // This prevents the UIImage conversion from being executed each time a cell loads
    cell.cellImage.image = storedImages[indexPath.row]
    cell.cellLabel?.text = storedData[indexPath.row].name
    
    return cell
  }
}

