import Foundation

enum MainMenuItem: String {
    case Projects = "Projects"
    case Experience = "Work Experience"
    case Education = "Qualifications and Education"
    case Contact = "Contact"
    static let initialMenu = Projects
    static let allMenuItems = [Projects, Experience, Education, Contact]
}