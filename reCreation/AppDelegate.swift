//
//  AppDelegate.swift
//  reCreation
//
//  Created by Daniel Creagh on 18/07/2015.
//  Copyright © 2015 Creagh Creations. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UISplitViewControllerDelegate {

  var window: UIWindow?

  func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

    // MARK: Split View initialization
    let splitViewController = self.window!.rootViewController as! UISplitViewController
    let navigationController = splitViewController.viewControllers[splitViewController.viewControllers.count-1] as! UINavigationController
    navigationController.topViewController!.navigationItem.leftBarButtonItem = splitViewController.displayModeButtonItem()
    splitViewController.delegate = self
    
    // MARK: Nav bar setup
    UINavigationBar.appearance().titleTextAttributes = [NSFontAttributeName: f_NAV_BAR!, NSForegroundColorAttributeName : UIColor.whiteColor()]
    
    UIApplication.sharedApplication().statusBarStyle = .LightContent
    
    return true
  }

  // MARK: - Split view

  func splitViewController(splitViewController: UISplitViewController, collapseSecondaryViewController secondaryViewController:UIViewController, ontoPrimaryViewController primaryViewController:UIViewController) -> Bool {
    guard let secondaryAsNavController = secondaryViewController as? UINavigationController else { return false }
    guard let topAsDetailController = secondaryAsNavController.topViewController as? DetailViewController else { return false }
    if topAsDetailController.detailItem == nil {
        // Return true to indicate that we have handled the collapse by doing nothing; the secondary controller will be discarded.
        return true
    }
    return false
  }
}

