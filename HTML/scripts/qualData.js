angular.module('qualData', [])
  .controller('qualDataController', function($scope) {
            
    var vm = this;
    
    vm.qualsData = [
                {
                    "name": "Android Development",
                    "authority" : "JB International",
                    "description": "",
                    "experienceDate" : "October '15",
                    "link": "http://www.jbinternational.co.uk/",
                },
                {
                    "name": "Bash/Command Line basics",
                    "authority" : "CodeCademy",
                    "description": "",
                    "experienceDate" : "August '15",
                    "link": "https://www.codecademy.com",
                },
                {
                   "name": "Angular JS",
                   "authority" : "JB International",
                   "description": "",
                   "experienceDate" : "June '15",
                   "link": "http://www.jbinternational.co.uk/",
                },
                {
                    "name": "Web Applications Engineering",
                    "authority" : "Udacity",
                    "description": "",
                    "experienceDate" : "June '12",
                    "link": "http://www.udacity.com/",
                },
                {
                    "name": "TEFL",
                    "authority" : "i-to-i",
                    "description": "Teaching English as a Foreign Language",
                    "experienceDate" : "January '12",
                    "link": "http://www.i-to-i.com/tefl/",
                },
                {
                    "name": "Certified SCRUM Master",
                    "authority" : "Scrum Alliance",
                    "description": "",
                    "experienceDate" : "July '10",
                    "link": "http://www.scrumalliance.org/",
                },
                {
                    "name": "Advanced Romanian Language ",
                    "authority" : "Romanian Cultural Institute - Bucharest",
                    "description": "",
                    "experienceDate" : "October '10",
                    "link": "http://www.icr.ro/bucharest/",
                },
                {
                    "name": "Certified Software Tester",
                    "authority" : "ISTQB",
                    "description": "",
                    "experienceDate" : "September '06",
                    "link": "http://www.istqb.org/",
                },
                {
                    "name": "Computer Science BS",
                    "authority" : "The University of Hull",
                    "description": "The computer science department at Hull was of a very high standard. My choice of modules and course material were geared mainly towards Java programming and object oriented software design. The following subjects were also covered: Java (CORBA) client/server architecture -Information Systems -C Language -Assembler -Programming Language Paradigms and their Compilers -2D & 3D(OpenGL) Graphics using Java as a platform -Artificial Intelligence, Neural Networks and Genetic Algorithms",
                    "experienceDate" : "June '02",
                    "link": "http://www2.hull.ac.uk/",
                },
               ];
});
