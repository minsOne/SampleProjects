//
//  ViewController.swift
//  BundleApp
//
//  Created by minsone on 2020/09/23.
//

import UIKit
import Feature
import Foundation

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    //        UIStoryboard.
    let button = UIButton(type: .system,
                          primaryAction: UIAction(title: "Present VC", handler: { [weak self] _ in
                            self?.presentFeature()
                          }))
    button.frame = .init(x: 150, y: 300,
                         width: 100, height: 100)
    button.backgroundColor = .orange
    self.view.addSubview(button)
  }
  
  func presentFeature() {
    let storyboard = UIStoryboard(name: "FeatureViewController", bundle: Bundle.feature)
    let vc = storyboard.instantiateViewController(identifier: "FeatureViewController") as! FeatureViewController
    self.present(vc, animated: true, completion: nil)
  }
}

