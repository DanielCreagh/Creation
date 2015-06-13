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
    
    tableView.backgroundColor = UIColor(patternImage: UIImage(named:MAIN_BACKGROUND_IMAGE)!)
    title = ""
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

//    (segue.destinationViewController as! DetailViewController).pageToLoad = "www.creagh.com"
    
    let controller = (segue.destinationViewController as! UINavigationController).topViewController
    controller.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem()
    controller.navigationItem.leftItemsSupplementBackButton = true
    (controller as! DetailViewController).pageToLoad = "HTML/contact.html"

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
    cell.backgroundColor = UIColor.clearColor()
    println( " this is the width of the cel: \(cell.frame.width)")
  
    return cell
  }
  
  //MARK: Table View Delegate Functions
  override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {

    if indexPath.row == find(MainMenuItem.allMenuItems, MainMenuItem.Experience) {
      performSegueWithIdentifier(seg_SHOW_EXPERIENCE, sender: nil)
      return
    }
    performSegueWithIdentifier(seg_DEFAULT, sender: nil)
  }
  
    // MARK: - Table View - Section Headers
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 211.0
    }
//    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "Creagh Creations"
//    }
//  override func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
  override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    
    return  UIImageView(image: UIImage(named: "MainHeader"))
  }
}

