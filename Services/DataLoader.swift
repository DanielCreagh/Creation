//
//  DataLoader.swift
//  Creation
//
//  Created by Daniel Creagh on 25/04/2015.
//  Copyright (c) 2015 Daniel Creagh. All rights reserved.
//

import Foundation

func loadData() {
  print("load data", terminator: "")
  
  let model = DataModel.sharedInstance
  
  populateWithPersonalDetails(model)
  populateWithKeySkills(model)
  populateWithQualifications(model)
  populateWithWorkExperience(model)
  populateWithHobbies(model)
}

func populateWithPersonalDetails(model: DataModel) {
  
  model.details = PersonalDetails()
  model.details.firstName = "Daniel"
  model.details.surName = "Creagh"
  model.details.eMailAddress = "Daniel@Creagh.com"
  model.details.telephoneNumber = "+44 (0) 7447 066 341"
}

func populateWithKeySkills(model: DataModel) {
  model.keySkills = ["Mobile App Development: iOS (Objective C and Swift)",
    "Test Driven Development",
    "Responsive Web Design & Development",
    "Cross platform mobile App development: Phone Gap",
    "Video Games industry experience",
    "Agile Project Management: SCRUM",
    "Quality Assurance"]
}

func populateWithWorkExperience(model: DataModel) {
  
  let mAndS = WorkExperience()
  mAndS.nameOfCompany = "Marks & Spencer Plc."
  mAndS.webSiteOfCompany = "https://www.marksandspencer.com/"
  mAndS.position = "Software Engineer"
  mAndS.descriptionOfPosition = "Hands on experience in a small Mobile App development agency working with a dynamic team of designers and developers."
  mAndS.responsibilities = ["iOS: Objective C & Swift",
  "TDD",
  "Continuous Integration"]
  mAndS.start = makeDateObject("2012-09-01T12:00")
  mAndS.end = makeDateObject("2013-04-01T12:00")
  
  let apptivata = WorkExperience()
  apptivata.nameOfCompany = "Apptivata"
  apptivata.webSiteOfCompany = "http://www.apptivata.com"
  apptivata.position = "Producer & Mobile Developer"
  apptivata.descriptionOfPosition = "Hands on experience in a small Mobile App development agency working with a dynamic team of designers and developers."
  apptivata.responsibilities = ["Mobile App development",
    "iOS, Android & Phone Gap",
    "Project Management, team coordination (Agile & SCRUM)",
    "Communication with clients",
    "Test management",
    "Coordinating submissions to Appstore/Google Play"]
  apptivata.start = makeDateObject("2012-09-01T12:00")
  apptivata.end = makeDateObject("2013-04-01T12:00")
  
  let matterOfForm = WorkExperience()
  matterOfForm.nameOfCompany = "Matter Of Form"
  matterOfForm.webSiteOfCompany = "http://matterofform.com/"
  matterOfForm.position = "iOS developer"
  matterOfForm.descriptionOfPosition = "Working as an independent developer within the agency, building iPad applications for third party clients and start-up partnerships."
  matterOfForm.responsibilities = ["iPad App development",
    "Objective C/Xcode",
    "Working closely with internal design team"]
  matterOfForm.start = makeDateObject("2013-04-01T12:00")
  matterOfForm.end = makeDateObject("2014-01-01T12:00")
  
  let apptivation = WorkExperience()
  apptivation.nameOfCompany = "Apptivation"
  apptivation.webSiteOfCompany = "http://www.apptivation.co.uk/"
  apptivation.position = "iOS developer"
  apptivation.descriptionOfPosition = "Working as part of the Lloyds Banking Group team, building iPad and iPhone applications for Lloyds, Bank of Scotland and Halifax brands."
  apptivation.responsibilities = ["iPad & iPhone App development",
    "Objective C/Xcode",
    "GIT",
    "Agile/SCRUM team",
    "Embedded in client team at their office"]
  apptivation.start = makeDateObject("2014-01-01T12:00")
  apptivation.end = makeDateObject("2014-10-01T12:00")
  
  let creations = WorkExperience()
  creations.nameOfCompany = "Creagh Creations"
  creations.webSiteOfCompany = "http://www.creagh.com/"
  creations.position = "Freelance Mobile App Development and Project Management"
  creations.descriptionOfPosition = "Designing and developing websites and mobile applications for small businesses and personal projects."
  creations.responsibilities = ["iOS apps (Objective C)",
  "HTML5, CSS3 & Javascript",
  "Responsive web design",
  "Web apps (Python)",
  "Photoshop & Flash (AS3)",
  "Project Management & QA"]
  creations.start = makeDateObject("2011-09-01T12:00")
  creations.end = makeDateObject("2014-01-01T12:00")
  
  let iPlay = WorkExperience()
  iPlay.nameOfCompany = "I-play"
  iPlay.webSiteOfCompany = "http://www.iplay.com/"
  iPlay.position = "Producer"
  iPlay.descriptionOfPosition = "Leading a dedicated multidisciplinary game development team of 8 programmers, designers, artists & testers for J2ME supported devices and iPhone."
  iPlay.responsibilities = ["Scheduling & project/task estimations - Sprint planning",
  "Reviewing Game Designs",
  "Milestone presentations and project status updates to all major stakeholders",
  "External liaisons with Licensors and Sales & Marketing teams",
  "Coordinating art, text, audio & design assets, including marketing materials",
  "Recruiting, training and mentoring",
  "Coordinating QA - including focus groups"]
  iPlay.start = makeDateObject("2005-05-01T12:00")
  iPlay.end = makeDateObject("2010-05-01T12:00")
  
  model.workExperience = [mAndS, apptivation, apptivata, creations, iPlay]
}

func populateWithQualifications(model: DataModel) {
  
}

func populateWithHobbies(model: DataModel) {

}

func makeDateObject(mMdD: String) -> NSDate! {
  let dateStringFormatter = NSDateFormatter()
  dateStringFormatter.dateFormat = dateFormatter
//  dateStringFormatter.locale = NSLocale(localeIdentifier: "en_UK_POSIX")
  return dateStringFormatter.dateFromString(mMdD)
}
