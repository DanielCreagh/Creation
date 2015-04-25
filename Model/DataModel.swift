//
//  DataModel.swift
//  Creation
//
//  Created by Daniel Creagh on 25/04/2015.
//  Copyright (c) 2015 Daniel Creagh. All rights reserved.
//

import Foundation

private let _DataModelSharedInstance = DataModel()

class DataModel {
  class var sharedInstance: DataModel {
    return _DataModelSharedInstance
  }
  
  var details: PersonalDetails!
  var keySkills: [String]!
  var workExperience: [WorkExperience]!
  var qualifications: [Qualification]!
  var hobbies: [Hobby]!
}
