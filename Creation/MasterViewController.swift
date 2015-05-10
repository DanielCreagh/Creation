//
//  MasterViewController.swift
//  Creation
//
//  Created by Daniel Creagh on 15/04/2015.
//  Copyright (c) 2015 Daniel Creagh. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

    var detailViewController: DetailViewController? = nil

    override func awakeFromNib() {
        super.awakeFromNib()
        if UIDevice.currentDevice().userInterfaceIdiom == .Pad {
            self.clearsSelectionOnViewWillAppear = false
            self.preferredContentSize = CGSize(width: 320.0, height: 600.0  )
        }
//      UINavigationBar.appearance().translucent = false
//      UINavigationBar.appearance().barTintColor = col_BG_DARK_BLUE
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        if let split = self.splitViewController {
            let controllers = split.viewControllers
            self.detailViewController = controllers[controllers.count-1].topViewController as? DetailViewController
        }
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBarHidden = false
    }
    
  // MARK: - Segues
    
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

    let controller = (segue.destinationViewController as! UINavigationController).topViewController
    controller.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem()
    controller.navigationItem.leftItemsSupplementBackButton = true
  }

    // MARK: - Table View
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MainMenuItem.allMenuItems.count
    }

  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell

      let screenName = MainMenuItem.allMenuItems[indexPath.row].rawValue
      cell.textLabel!.text = screenName
    
    
      return cell
  }
  
//  override func tableView(tableView: UITableView, didSel
  override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {

    if indexPath.row == find(MainMenuItem.allMenuItems, MainMenuItem.Experience) {
      performSegueWithIdentifier(seg_SHOW_EXPERIENCE, sender: nil)
      return
    }
    performSegueWithIdentifier(seg_DEFAULT, sender: nil)
  }
  
    // MARK: - Table View - Section Headers
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 90.0
    }
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Creagh Creations"
    }
}

