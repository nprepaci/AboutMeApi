//
//  AboutMeApiUITests.swift
//  AboutMeApiUITests
//
//  Created by Nicholas Repaci on 9/1/21.
//

import XCTest
import AboutMeApi

class AboutMeApiUITests: XCTestCase {

    override func setUpWithError() throws {

        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
    }
  
  
  // Clicks on a row in the table view
      func testTableViewCatClick() throws {
        
        let app = XCUIApplication()
        app.launch()
        app.tables/*@START_MENU_TOKEN@*/.staticTexts["Abyssinian"]/*[[".cells.staticTexts[\"Abyssinian\"]",".staticTexts[\"Abyssinian\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.scrollViews.otherElements.staticTexts["5"].swipeUp()
    
  }

  // Clicks on user profile image and verifies scroll
      func testUserProfileClick() throws {
        
        let app = XCUIApplication()
        app.launch()
        app.navigationBars["CatBook"].buttons["Button"].tap()
        app.scrollViews.otherElements.containing(.image, identifier:"banner").element.swipeUp()
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
