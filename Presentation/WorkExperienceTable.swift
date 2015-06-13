//
//  WorkExperienceTable.swift
//  Creation
//
//  Created by Daniel Creagh on 04/05/2015.
//  Copyright (c) 2015 Daniel Creagh. All rights reserved.
//

import UIKit

class WorkExperienceTable: UITableViewController {

  let model = DataModel.sharedInstance
  
  override func viewDidLoad() {
    super.viewDidLoad()

    tableView.backgroundColor = UIColor(patternImage: UIImage(named:MAIN_BACKGROUND_IMAGE)!)
    tableView.estimatedRowHeight = 200.0
    tableView.rowHeight = UITableViewAutomaticDimension
  }
  
  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)
    
    tableView.reloadData()
  }
  
  // MARK: - Table view data source

  override func numberOfSectionsInTableView(tableView: UITableView) -> Int { return 1 }

  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return model.workExperience.count
  }

  
  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier(cel_MAIN_WORK_EXP, forIndexPath: indexPath) as! WorkExperienceTableCell

    cell.populateCellWithWorkExperience(model.workExperience[indexPath.row])
    
    return cell
  }
}
