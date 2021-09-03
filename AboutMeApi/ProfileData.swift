//
//  File.swift
//  AboutMeApi
//
//  Created by Nicholas Repaci on 9/2/21.
//

import Foundation
import UIKit

// Class to store static data for profile vc
class ProfileData {
  
  // Professional Experience
  let tokioMarineExp: String = """
• Developed first-of-its-kind automated regression tests utilizing C#, Selenium Webdriver, NUnit & NLog. Includes a GUI that empowers business users to build their own custom tests. Test results (e.g. successes, failures, screenshots, and full test log) are output to a dynamic dashboard.

• Implemented an internal claims system that reduced dependence on offshore adjusters. This system introduced automated functionality that saves users hundreds of work hours per month, and tens of thousands of dollars in costs per year. Received recognition from senior leadership on the positive impact of this project. Currently acting as the subject matter expert (SME) for this claims system.

• Lead role in both the design and development of a complete overhaul of the look, feel, and underlying technology of our user- facing insurance portal. This redesign was achieved through a combination of Angular and form.io’s form builder technology. Led UI/UX prototyping; designs developed via Axure RP. Worked closely with both global marketing and senior leadership to ensure design and functionality expectations were met. Company-wide recognition for innovative design. Frequently sought out to share design best practices with other business units looking to overhaul their site design.
"""
  
  let pepsiExp: String = """
Used creativity and entrepreneurial mindset to grow volume & revenue to achieve key performance indicators; increased volume in customer accounts upwards of 89%.

• Led the frontline through various change initiatives. Coached frontline employees and increased performance by 18%.

• Collected, charted, and interpreted statistical data; prepared and delivered sales presentations to customers.
"""
  
  
  // Short list of project work -- see more on nicholasrepaci.com/projects
  let recipeTrackerData: String = "Available on the App Store, see link on nicholasrepaci.com/projects - Built with SwiftUI & MVVM architecture. Utilizes Core Data to save and retrieve recipes and their associated data (images, recipes, recipe steps, etc.). If a user is feeling uninspired, a random recipe can be fetched via a call to TheMealDB API. Additional features include: error popups, dark mode/light mode, pull to refresh (iOS 15 only), and a unique parallax image effect."
  
  let trainTrackerData: String = "Utilizes MTA's realtime data feed to display live subway information. Feed data is converted from Protocol Buffers/GTFS to JSON via a local HTTP server/Flask app. Users can select their preferred subway line and view any of its associated stations. Clicking a station will display its inbound trains (uptown and downtown) and time until arrival. Users can personalize the app by selecting a custom color scheme & a preferred default train line. Utilizes SwiftUI & MVVM"
  
  let chartTrackerData: String = "iOS stock chart tracking application. Leverages the Trading Physics API to fetch stock data for a given day. Input parameters include both date and ticker. Users can pinch & zoom to interact with the presented chart. Google Firebase used for login/authentication. Built using UIKit."
  
  let iosAppData: String = "Utilizes the iTunes Search API to query iOS App Store data & return app list based on user inputted criteria. Users can filter results by price & category. Clicking on results displays app details, screenshots, and description."
  
}
