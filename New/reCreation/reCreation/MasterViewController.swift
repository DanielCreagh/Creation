//
//  MasterViewController.swift
//  reCreation
//
//  Created by Daniel Creagh on 18/07/2015.
//  Copyright © 2015 Creagh Creations. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

  var detailViewController: DetailViewController? = nil

  override func viewDidLoad() {
    super.viewDidLoad()

    title = ""
    
    if let split = self.splitViewController {
      let controllers = split.viewControllers
      detailViewController = (controllers[controllers.count-1] as! UINavigationController).topViewController as? DetailViewController
      if let detailViewControllerUnwrapped = detailViewController {
        detailViewControllerUnwrapped.detailItem = MainMenuItem.allMenuItems[0]
      }
    }
  }

  override func viewWillAppear(animated: Bool) {
    self.clearsSelectionOnViewWillAppear = self.splitViewController!.collapsed
    super.viewWillAppear(animated)
  }

  // MARK: - Segues

  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if segue.identifier == seg_SHOW_DETAIL {
      if let indexPath = self.tableView.indexPathForSelectedRow {
        let menuItemSelected = MainMenuItem.allMenuItems[indexPath.row]
          let controller = (segue.destinationViewController as! UINavigationController).topViewController as! DetailViewController
          controller.detailItem = menuItemSelected
          controller.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem()
          controller.navigationItem.leftItemsSupplementBackButton = true
      }
    }
  }

  // MARK: - Table View

  override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 1
  }

  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return MainMenuItem.allMenuItems.count
  }

  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)

    let menuItem = MainMenuItem.allMenuItems[indexPath.row]
    cell.textLabel!.text = menuItem.rawValue
    return cell
  }
}

