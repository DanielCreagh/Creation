angular.module('professionalData', [])
  .controller('professionalDataController', function($scope) {
            
    var vm = this;
    
    vm.professionalData = [
                 {
                 "title": "Software Engineer",
                 "company": "Marks & Spencer",
                 "companyLink": "http://www.marksandspencer.com/",
                 "experienceDate" : "November '14 - Present",
                 "description": "Developing enterprise apps and tools for staff members both in-store and at head-office, as part of the Staff Assisted Apps team.",
                 "lists": [
                           {
                           "name" : "Another Duties and Responsibilites:",
                           "items" : [
                                      "Developing iPad & iPhone Apps using Swift and Objective C",
                                      "Continuous Integration",
                                      "Designing and Innovating",
                                      "Developing Android Applications",
                                      "Working closely with staff within stores"
                                      ]
                           }
                         ]
                 },
                 {
                   "title": "iOS Developer",
                   "company": "Lloyds Banking Group",
                   "companyLink": "http://www.lloydsbank.com",
                 "experienceDate" : "Jan '14 - October '14",
                   "description": "Working with Mobile App Agency Apptivation, as part of the Lloyds Banking Group team, building iPad and iPhone applications for Lloyds, Bank of Scotland and Halifax brands.",
                   "lists": [
                             {
                             "name" : "Another Duties and Responsibilites:",
                             "items" : [
                                        "Developing iPad & iPhone Apps using Objective C",
                                        "Working within an Agile agency team",
                                        "Embedded in client team at their Chiswell Street office"
                                        ]
                             }
                             ]
                     },
                     {
                     "title": "iOS Developer",
                     "company": "Matter of Form",
                     "companyLink": "http://matterofform.com",
                 "experienceDate" : "April '13 - Dec '13",
                     "description": "Working as part of the Lloyds Banking Group team, building iPad and iPhone applications for Lloyds, Bank of Scotland and Halifax brands.",
                     "lists": [
                               {
                               "name" : "Duties and Responsibilites:",
                               "items" : [
                                          "iPad & iPhone App development",
                                          "Objective C/Xcode",
                                          "GIT",
                                          "Agile/SCRUM team",
                                          "Embedded in client team at their Chiswell Street office"
                                          ]
                               }
                               ]
                           },
                   {
                   "title": "Producer & Mobile App developer",
                   "company": "Apptivata",
                   "companyLink": "http://www.apptivata.com/",
                   "experienceDate" : "September '12 - April '13",
                           "description": "Hands on experience in a small Mobile App development agency working with a dynamic team of designers and developers.",
                   "lists": [
                             {
                               "name" : "Duties and Responsibilites:",
                             "items" : [
                                        "Developing mobile apps for iOS and Android",
                                        "Managing Projects",
                                        "Coordinating team using Agile & SCRUM methodologies",
                                        "Communicating with clients",
                                        "Managing test process",
                                        "Coordinating submissions to Appstore/Google Play"
                                        ]
                             }
                             ]
                           },
                           {
                           "title": "Freelance Design & Development",
                           "company": "Creagh Creations",
                           "companyLink": "http://www.Creagh.com/",
                           "experienceDate" : "September '11 - Jan '14",
                           "description": "Freelance work Designing and developing websites and mobile applications for small businesses and personal projects.",
                           "lists": [
                                     {
                                     "name" : "Skills and services provided:",
                                     "items" : [
                                                "Developing iOS apps using Objective C",
                                                "Developing web Front End using HTML5, CSS3 & Javascript",
                                                "Designing responsive web sites using Photoshop & Flash (Action Script)"
                                                ]
                                     }
                                     ]
                           },
                           {
                           "title": "Producer",
                           "company": "I-Play",
                           "companyLink": "http://www.iplay.com/",
                           "experienceDate" : "November '08 - April '10",
                           "description": "Leading a dedicated multidisciplinary game development team of 8 programmers, designers, artists & testers for J2ME supported devices and iPhone. During my time as Internal Producer I completed 4 projects managing 2 teams with project life-cycles lasting between 4 and 6 months:",
                           "lists": [
                                     {
                                     "name" : "Projects:",
                                     "items" : [
                                                "Bubble Town 2 (J2ME & BREW) - Pocket Gamer Bronze Award",
                                                "Bubble Town 2 (iPhone)",
                                                "Women's Murder Club: Death in Scarlet (J2ME)",
                                                "Deal or No Deal: Vegas Gold (J2ME)"
                                                ]
                                     },
                                     {
                                     "name" : "Day-to-day activity:",
                                     "items" : [
                                                "Scheduling & project/task estimations - Sprint planning",
                                                "Reviewing Game Designs",
                                                "Milestone presentations and project status updates to all major stakeholders",
                                                "External liaisons with Licensors and Sales teams",
                                                "Coordinating art, text, audio & design assets, including marketing materials",
                                                "Recruiting, training and mentoring",
                                                "Coordinating QA - including focus groups"
                                                ]
                                     }
                                ]
                           },
                           {
                           "title": "QA Manager",
                           "company": "I-Play",
                           "companyLink": "http://www.iplay.com/",
                           "experienceDate" : "April '07 - November '08",
                           "description": "Building and developing multiple QA teams who were responsible for the quality of games released for the EU & US markets. The department size varied between 10 and 25 testers under my management. Taking on this role involved relocating from the North of England to Bucharest, Romania.",
                           "lists": [
                                     {
                                     "name" : "Duties and Responsibilites:",
                                     "items" : [
                                                "Recruiting, training, coaching, mentoring and scheduling",
                                                "Managing multiple, deadline driven projects with a consistent success rate",
                                                "Analyzing workflow, risk identification and optimization",
                                                "Administrating the bug database",
                                                "Project status updates to stakeholders outside of the internal QA team and in various international studios"
                                                ]
                                     }
                                ]
                           },
                           {
                           "title": "QA Lead",
                           "company": "I-Play",
                           "companyLink": "http://www.iplay.com/",
                           "experienceDate" : "April '05 - April '07",
                           "description": "Coordinating the test process of European conversions/porting J2ME projects. During my 2 years of being a project lead I managed 12 projects each of which lasted between 2 and 8 weeks.",
                           "lists": [
                                     {
                                     "name" : "Duties and responsibilities:",
                                     "items" : [
                                                "Test planning for vast device lists for the European market",
                                                "Assisting in the recruitment process of both functional and localization testers",
                                                "Training/coaching team members and managing their time effectively - scheduling",
                                                "Bug database administration and bug investigations - waiving, vetting & impact assessment",
                                                "Project configuration management and project status reports - risk analysis"
                                                ]
                                     }
                                     ]
                           }
               ];
});
