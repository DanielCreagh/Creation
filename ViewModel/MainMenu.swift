import Foundation

enum MainMenuItem: String {
  case Projects   = "Projects"
  case Experience = "Professional"
  case Education  = "Academic"
  case Contact    = "Contact"
  case Personal   = "Personal"
  static let initialMenu = Projects
  static let allMenuItems = [Projects, Experience, Education, Personal, Contact]
  
  var UrlForResource : NSURL? {
    switch self {
    case Projects:    return NSBundle.mainBundle().URLForResource("projects",   withExtension: "html", subdirectory:"HTML")
    case Experience:  return NSBundle.mainBundle().URLForResource("experience", withExtension: "html", subdirectory:"HTML")
    case Education:   return NSBundle.mainBundle().URLForResource("quals",      withExtension: "html", subdirectory:"HTML")
    case Contact:     return NSBundle.mainBundle().URLForResource("contact",    withExtension: "html", subdirectory:"HTML")
    case Personal:    return NSBundle.mainBundle().URLForResource("personal",   withExtension: "html", subdirectory:"HTML")
    }
  }
}