//
//  ViewController.swift
//  AboutMeApi
//
//  Created by Nicholas Repaci on 9/1/21.
//

import UIKit

class MainVC: UIViewController, Storyboarded {
  var coordinator: MainCoordinator?

  @IBOutlet weak var tableView: UITableView!
  @IBOutlet weak var profileButton: UIButton!
  
  var api = API()
  var storedData: ResponseData = ResponseData()
  var indexOfCurrentRow = Int()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    //rounds corners of bar button item specific to its frame of 35 x 35
    //E.g. 35/50 == 0.7, so 0.7 * 25 == 17.5
    profileButton.imageView?.layer.cornerRadius = 17.5
    
    //Sets title of nav bar
    self.title = "News Feed"
    tableView.dataSource = self
    tableView.delegate = self
    
    // Loads API data and reloads tableview once completion handler is triggered
    api.loadData(search: "") { ResponseData in
      self.storedData = self.api.storedData
      self.tableView.reloadData()
    }
  }
}

extension MainVC: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    indexOfCurrentRow = indexPath.row
    
    coordinator?.catDetails(details: storedData[indexOfCurrentRow].description, name: storedData[indexOfCurrentRow].name, temperament: storedData[indexOfCurrentRow].temperament, lifespan: storedData[indexOfCurrentRow].lifeSpan, energy: storedData[indexOfCurrentRow].energyLevel, image: UIImage(data: try! Data(contentsOf: URL(string: storedData[indexPath.row].image?.url ?? "") ?? URL.init(fileURLWithPath: ""))) ?? UIImage.init())
    
    // Deselects row after click
    tableView.deselectRow(at: indexPath, animated: true)
  }
}

extension MainVC: UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return storedData.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableCell
    cell.outerImageView.clipsToBounds = true
    cell.outerImageView.layer.cornerRadius = 25
    cell.cellImage?.image = UIImage(data: try! Data(contentsOf: URL(string: storedData[indexPath.row].image?.url ?? "") ?? URL.init(fileURLWithPath: "")))
    
    cell.cellLabel?.text = storedData[indexPath.row].name
    
    return cell
  }
  
}

