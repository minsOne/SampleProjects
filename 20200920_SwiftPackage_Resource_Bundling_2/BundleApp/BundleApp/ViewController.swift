//
//  ViewController.swift
//  BundleApp
//
//  Created by minsone on 2020/09/24.
//

import UIKit
import FeatureA
import FeatureB
import FeatureC

class ViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let actionA = UIAction(title: "Feature A", handler: presentFeatureA)
    let buttonA = UIButton(type: .system,
                           primaryAction: actionA)
    buttonA.frame = .init(x: 150, y: 200, width: 100, height: 100)
    buttonA.backgroundColor = .orange
    
    let actionB = UIAction(title: "Feature B", handler: presentFeatureB)
    let buttonB = UIButton(type: .system,
                           primaryAction: actionB)
    buttonB.frame = .init(x: 150, y: 350, width: 100, height: 100)
    buttonB.backgroundColor = .red
    
    let actionC = UIAction(title: "Feature C", handler: presentFeatureC)
    let buttonC = UIButton(type: .system,
                           primaryAction: actionC)
    buttonC.frame = .init(x: 150, y: 500, width: 100, height: 100)
    buttonC.backgroundColor = .green

    view.addSubview(buttonA)
    view.addSubview(buttonB)
    view.addSubview(buttonC)
  }
  
  func presentFeatureA(_ action: UIAction) {
    let storyboard = UIStoryboard(name: "FeatureAViewController", bundle: Bundle.featureA)
    let vc = storyboard.instantiateViewController(identifier: "FeatureAViewController") as! FeatureAViewController
    self.present(vc, animated: true, completion: nil)
  }
  
  func presentFeatureB(_ action: UIAction) {
    let storyboard = UIStoryboard(name: "FeatureBViewController", bundle: Bundle.featureB)
    let vc = storyboard.instantiateViewController(identifier: "FeatureBViewController") as! FeatureBViewController
    self.present(vc, animated: true, completion: nil)
  }
  
  func presentFeatureC(_ action: UIAction) {
    let storyboard = UIStoryboard(name: "FeatureCViewController", bundle: Bundle.featureC)
    let vc = storyboard.instantiateViewController(identifier: "FeatureCViewController") as! FeatureCViewController
    self.present(vc, animated: true, completion: nil)
  }
  
}
