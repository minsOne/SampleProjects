//
//  AppDelegate.swift
//  SampleApp
//
//  Created by minsone on 2020/10/12.
//

import UIKit
import SamplePackage

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    print(SamplePackage.helloworld())
    return true
  }
}
