# AboutMeApi

AboutMeApi is a fun twist on a simple social media platform. This app utilizes [The Cat Api](https://thecatapi.com) to return a social media style "news feed" of cat data. 

## Architecture

This project was developed entirely with Swift, adhering to the Coordinator structural design pattern for organizing flow logic between view controllers. Built using UIKit/MVVM.

## Resources

This project could not have been developed without the use of [The Cat Api](https://thecatapi.com)

## Running The Project

There is no initial setup needed to run the app. Open XCode, choose a simulator, and run the app!

## Customization

Users can change the amount of data returned by the API. It is currently limited to 20 results. To modify, navigate to the "API" class. Locate the URL string - "URL(string:"https://api.thecatapi.com/v1/breeds?limit=20")" - and change the value "20" at the end of the string to any desired number. Additionally, this limit can be removed altogether.

## Project Features

Users can click on any of the cats that appear in the table view. Doing so will display more information about the cat. This includes temperament, lifespan, energy levels, and details.

Clicking the profile icon found on the top left of the main vc will display a profile screen. This screen is populated with a portion of my resume data. This data is static, and does NOT come from The Cat API. **Spoiler - I am not a cat**

Please be sure to check out the app in dark mode. Do this by setting your device's theme directly. 

## Help

Submit a [GitHub Issues request](https://github.com/nprepaci/AboutMeApi/issues)

