//
//  AboutMeApiTests.swift
//  AboutMeApiTests
//
//  Created by Nicholas Repaci on 9/1/21.
//

import XCTest
@testable import AboutMeApi

class AboutMeApiTests: XCTestCase {
  
  //Function that tests the API to ensure it returns data successfully
  func testAPI() {
    
    // Create an expectation for a background download task.
    let expectation = XCTestExpectation(description: "Test if API is returning data")
    
    // Create a URL for a web page to be downloaded.
    let url = URL(string: "https://api.thecatapi.com/v1/breeds")!
    
    // Create a background task to download the web page.
    let dataTask = URLSession.shared.dataTask(with: url) { (data, _, _) in
      
      // Make sure we downloaded some data.
      XCTAssertNotNil(data, "No data was downloaded.")
      
      // Fulfill the expectation to indicate that the background task has finished successfully.
      expectation.fulfill()
    }
    
    // Start the download task.
    dataTask.resume()
    
    // Wait until the expectation is fulfilled, with a timeout of 10 seconds.
    wait(for: [expectation], timeout: 10.0)
  }
  

    override func setUpWithError() throws {
  
    }

    override func tearDownWithError() throws {
  
    }

    func testExample() throws {

    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
