//
//  DataLoader.swift
//  Creation
//
//  Created by Daniel Creagh on 25/04/2015.
//  Copyright (c) 2015 Daniel Creagh. All rights reserved.
//

import Foundation

func loadData() {
  println("load data")
  
  let model = DataModel.sharedInstance
  
  populateWithPersonalDetails(model)
}

func populateWithPersonalDetails(model: DataModel) {
  
  model.details = PersonalDetails()
  model.details.firstName = "Daniel"
  model.details.surName = "Creagh"
  model.details.eMailAddress = "Daniel@Creagh.com"
  model.details.telephoneNumber = "+44 (0) 7447 066 341"
}
