//
//  Animations.swift
//  AboutMeApi
//
//  Created by Nicholas Repaci on 9/2/21.
//

import UIKit

//Performs line growth animation used within CatDetailVC
class Animations {
  func animateLines(view1: UIView, view2: UIView, view3: UIView, view4: UIView) {
    UIView.animate(withDuration: 0.0, animations: {
                    view1.transform = CGAffineTransform(scaleX: 0.0, y: 15.0)
                    view2.transform = CGAffineTransform(scaleX: 0.0, y: 15.0)
                    view3.transform = CGAffineTransform(scaleX: 0.0, y: 15.0)
                    view4.transform = CGAffineTransform(scaleX: 0.0, y: 15.0)},
                   completion: { _ in
                    UIView.animate(withDuration: 1.25) {
                      view1.transform = CGAffineTransform.identity
                      view2.transform = CGAffineTransform.identity
                      view3.transform = CGAffineTransform.identity
                      view4.transform = CGAffineTransform.identity
      }
    })
  }
}
