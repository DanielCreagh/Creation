angular.module('projectData', [])
  .controller('projectDataController', function($scope) {
            
    var vm = this;
    
    vm.projectsData = [
                 {
                 "name": "Lloyds iPad Banking App",
                 "mainImage": "images/thumbnails/ios/lloydsTabletPersonal.png",
                 "rollOverImage": "images/thumbnails/ios/lloydsTabletPersonalOverlay.png",
                 "description": "Lloyds iPad Banking App",
                 "link": "https://itunes.apple.com/gb/app/lloyds-bank-express-logon/id918511092?mt=8",
                 "details": [
                             "Agency: Apptivation",
                             "iOS Development",
                             "iPad",
                             "Hybrid App"
                             ]
                 },
                 {
                 "name": "Halifax iPad Banking App",
                 "mainImage": "images/thumbnails/ios/HalTabletPersonal.png",
                 "rollOverImage": "images/thumbnails/ios/HalTabletPersonalOverlay.png",
                 "description": "Halifax iPad Banking App",
                 "link": "https://itunes.apple.com/gb/app/halifax-express-sign-in-for/id918506707?mt=8",
                 "details": [
                             "Agency: Apptivation",
                             "iOS Development",
                             "iPad",
                             "Hybrid App"
                             ]
                 },
                 {
                 "name": "BoS iPad Banking App",
                 "mainImage": "images/thumbnails/ios/BoSTabletPersonal.png",
                 "rollOverImage": "images/thumbnails/ios/BoSTabletPersonalOverlay.png",
                 "description": "Bank of Scotland iPad Banking App",
                 "link": "https://itunes.apple.com/gb/app/bank-scotland-express-login/id918447505?mt=8",
                 "details": [
                             "Agency: Apptivation",
                             "iOS Development",
                             "iPad",
                             "Hybrid App"
                             ]
                 },
                 {
                 "name": "Lloyds Personal Banking App",
                 "mainImage": "images/thumbnails/ios/lloydsPersonal.png",
                 "rollOverImage": "images/thumbnails/ios/lloydsPersonalOverlay.png",
                 "description": "Lloyds Personal Banking App",
                 "link": "https://itunes.apple.com/gb/app/lloyds-bank-mobile-banking/id469964520?mt=8",
                 "details": [
                             "Agency: Apptivation",
                             "iOS Development",
                             "iPhone",
                             "Objective C"
                             ]
                 },
                 {
                 "name": "Halifax Personal Banking App",
                 "mainImage": "images/thumbnails/ios/HalPersonal.png",
                 "rollOverImage": "images/thumbnails/ios/HalPersonalOverlay.png",
                 "description": "Halifax Personal Banking App",
                 "link": "https://itunes.apple.com/gb/app/halifax-mobile-banking/id486355738?mt=8",
                 "details": [
                             "Agency: Apptivation",
                             "iOS Development",
                             "iPhone",
                             "Objective C"
                             ]
                 },
                 {
                 "name": "BoS Personal Banking App",
                 "mainImage": "images/thumbnails/ios/BoSPersonal.png",
                 "rollOverImage": "images/thumbnails/ios/BoSPersonalOverlay.png",
                 "description": "BoS Personal Banking App",
                 "link": "https://itunes.apple.com/gb/app/bank-scotland-mobile-banking/id485728109?mt=8",
                 "details": [
                             "Agency: Apptivation",
                             "iOS Development",
                             "iPhone",
                             "Objective C"
                             ]
                 },
                 {
                 "name": "e-Gamebook",
                 "mainImage": "images/thumbnails/ios/eGameBook.jpg",
                 "rollOverImage": "images/thumbnails/ios/eGameBookOverlay.jpg",
                 "description": "e-Gamebook by Peter Wilson",
                 "link": "https://itunes.apple.com/gb/app/e-gamebook/id669406453?mt=8",
                 "details": [
                             "Agency: Matter of Form",
                             "iOS Development",
                             "iPad",
                             "Project Management",
                             "Core Data"
                             ]
                 },
                 {
                 "name": "NHS SDA Collection",
                 "mainImage": "images/thumbnails/ios/NHS.jpg",
                 "rollOverImage": "images/thumbnails/ios/NHS.jpg",
                 "description": "NHS SDA Collection",
                 "link": "https://itunes.apple.com/gb/app/abdominal-aortic-aneurysm/id585615184?mt=8",
                 "details": [
                             "Agency: Apptivata",
                             "iPhone/Android/HTML 5",
                             "Full series of 30+ apps",
                             "Phone Gap",
                             "Project Management"
                             ]
                 },
                 {
                 "name": "The 72 Names of God",
                 "mainImage": "images/thumbnails/ios/72namesofgodThumb.png",
                 "rollOverImage": "images/thumbnails/ios/72namesofgodThumboverlay.png",
                 "description": "The 72 Names of God",
                 "link": "http://itunes.apple.com/gb/app/kabbalah-the-72-names-of-god/id525817174?mt=8",
                 "details": [
                             "iPhone/iPod App",
                             "Objective C",
                             "Port from Windows Mobile",
                             "Photoshop"
                             ]
                 },
                 {
                 "name": "Bubble Town 2",
                 "mainImage": "images/thumbnails/ios/BT2.jpg",
                 "rollOverImage": "images/thumbnails/ios/BT2Overlay.png",
                 "description": "Bubble Town 2",
                 "link": "http://itunes.apple.com/us/app/bubble-town-2/id335039634?mt=8",
                 "details": [
                             "As part of my work with I-play/Oberon Media",
                             "Project Management",
                             "iOS",
                             "Port from Java version"
                             ]
                 },
                 {
                 "name": "Ninja",
                 "mainImage": "images/thumbnails/ios/ninja_sticker.png",
                 "rollOverImage": "images/thumbnails/ios/ninja_stickerRollOver.png",
                 "description": "Work in progress: Ninja",
                 "link": "#",
                 "details": [
                             "iPhone/iPod App",
                             "Innovative video game mechanic",
                             "Objective C",
                             "Photoshop"
                             ]
                 },
                 {
                 "name": "This Website",
                 "mainImage": "images/thumbnails/HTML5/thisSite.png",
                 "rollOverImage": "images/thumbnails/HTML5/thisSiteRollOver.png",
                 "description": "Creagh Creations Port Folio website",
                 "link": "#",
                 "details": [
                             "Port-Folio",
                             "Responsive design",
                             "CSS3",
                             "Angular JS",
                             "Photoshop"
                             ]
                 },
                 {
                 "name": "Tetrid",
                 "mainImage": "images/thumbnails/HTML5/TetridThumb.png",
                 "rollOverImage": "images/thumbnails/HTML5/TetridThumbOverlay.png",
                 "description": "Tetrid",
                 "link": "http://creagh.com/projects/HTML5/Tetrid/index.html",
                 "details": [
                             "HTML5 Canvas",
                             "Javascript",
                             "CSS3",
                             "Photoshop",
                             "Personal project/experiment"
                             ]
                 },
                 {
                 "name": "Shnake",
                 "mainImage": "images/thumbnails/HTML5/ShnakeThumb.jpg",
                 "rollOverImage": "images/thumbnails/HTML5/ShnakeThumbOverlay.png",
                 "description": "Shnake",
                 "link": "http://creagh.com/projects/HTML5/Shnake/index.html",
                 "details": [
                             "HTML5 Canvas",
                             "CSS3",
                             "Javascript",
                             "Photoshop",
                             "Personal project/experiment"
                             ]
                 },
                 {
                 "name": "Burst Crew @ Clear Bar",
                 "mainImage": "images/thumbnails/flash/flashThumbplaceholder.png",
                 "rollOverImage": "images/thumbnails/flash/ClearBarOverlay.png",
                 "description": "Burst Crew at Clear Bar Newcastle",
                 "link": "http://creagh.com/projects/flash/ClearBar/ClearBarAnimation.html",
                 "details": [
                             "Photography from live event",
                             "Music composition",
                             "Very early personal project"
                             ]
                 },
                 {
                 "name": "Flake",
                 "mainImage": "images/thumbnails/flash/FlakeThumb01.jpg",
                 "rollOverImage": "images/thumbnails/flash/FlakeOverlay.png",
                 "description": "Flake (Fl -ash, sn-ake)",
                 "link": "http://creagh.com/projects/flash/Flake/flake.html",
                 "details": [
                             "Adobe Flash",
                             "Action Script 3",
                             "Personal project/experiment"
                             ]
                 },
                 {
                 "name": "Ninja",
                 "mainImage": "images/thumbnails/ios/ninja_sticker.png",
                 "rollOverImage": "images/thumbnails/ios/ninja_stickerRollOver.png",
                 "description": "Ninja: Work in Progress",
                 "link": "#",
                 "details": [
                             "Prototype",
                             "Innovative video game mechanic",
                             "Flash & iOS",
                             "Photoshop"
                             ]
                 },
                 {
                 "name": "Cutting Edge Mowers",
                 "mainImage": "images/thumbnails/HTML5/CuttingEdgeThumbnail.png",
                 "rollOverImage": "images/thumbnails/HTML5/CuttingEdgeThumbnailRollOver.png",
                 "description": "Cutting Edge Mowers Nottingham",
                 "link": "http://www.cuttingedgemowers.com",
                 "details": [
                             "Responsive web design",
                             "Javascript",
                             "CSS3",
                             "Photoshop"
                             ]
                 },
                 {
                 "name": "Buzzing around Bucharest",
                 "mainImage": "images/thumbnails/otherprojects/BuzzingThumb03.jpg",
                 "rollOverImage": "images/thumbnails/otherprojects/BuzzingThumbOverlay.png",
                 "description": "Buzzing around Bucharest",
                 "link": "http://www.youtube.com/watch?v=qO8A2E2sG9g",
                 "details": [
                             "Photography from delta plane & Cessna",
                             "Video editing"
                             ]
                 },
                 {
                 "name": "Kaji Music Bucharest",
                 "mainImage": "images/thumbnails/otherprojects/KajiThumb01.png",
                 "rollOverImage": "images/thumbnails/otherprojects/KajiThumbOverlay.png",
                 "description": "Kaji Music: Bucharest",
                 "link": "http://www.youtube.com/watch?v=ZDXt3a0vovI&feature=channel_video_title",
                 "details": [
                             "Live music performance",
                             "Rhythm Guitar & Vocals"
                             ]
                 },
                 {
                 "name": "Misanthropia",
                 "mainImage": "images/thumbnails/otherprojects/SoundCloudThumb01.jpg",
                 "rollOverImage": "images/thumbnails/otherprojects/MusicThumbOverlay.png",
                 "description": "Misanthropia",
                 "link": "http://soundcloud.com/m1santhrop1a/misanthropia",
                 "details": [
                             "Electronic music production",
                             "Live music performance"
                             ]
                 }
               ];
});
