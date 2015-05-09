//
//  WorkExperienceTableCell.swift
//  Creation
//
//  Created by Daniel Creagh on 06/05/2015.
//  Copyright (c) 2015 Daniel Creagh. All rights reserved.
//

import UIKit

class WorkExperienceTableCell: UITableViewCell {

  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var nameOfCompanyLabel: UILabel!
  @IBOutlet weak var descriptionLabel: UILabel!
  @IBOutlet weak var subHeadingLabel: UILabel!
  @IBOutlet weak var responsibilitiesLabel: UILabel!
  @IBOutlet weak var datesLabel: UILabel!
  
  func populateCellWithWorkExperience(experienceData: WorkExperience) {
    
    titleLabel.text = experienceData.position
    nameOfCompanyLabel.text = experienceData.nameOfCompany
    descriptionLabel.text = experienceData.descriptionOfPosition

    responsibilitiesLabel.text = experienceData.responsibilities.reduce("", combine: { $0! + $1 })
    datesLabel.text = experienceData.end.description
    
    backgroundColor = UIColor.clearColor()
  }
}
