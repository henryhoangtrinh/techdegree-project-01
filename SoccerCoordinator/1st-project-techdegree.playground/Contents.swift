import UIKit

var player1: [String: String] = [ /* String to String */
    "name" : "Joe Smith" ,
    "height": "42.0",
    "Experience" : "YES",
    "Guardian Name" : "Jim and Jan Smith"
]

var player2: [String: String] = [ /* String to String */
    "name" : "Jill Tanner" ,
    "height": "36.0",
    "Experience" : "YES",
    "Guardian Name" : "Clara Tanner"
]

var player3: [String: String] = [ /* String to String */
    "name" : "Bill Bon" ,
    "height": "43.0",
    "Experience" : "YES",
    "Guardian Name" : "Sara and Jenny Bon"
]

var player4: [String: String] = [ /* String to String */
    "name" : "Eva Gordon" ,
    "height": "45.0",
    "Experience" : "NO",
    "Guardian Name" : "Wendy and Mike Gordon"
]

var player5: [String: String] = [ /* String to String */
    "name" : "Matt Gill" ,
    "height": "40.0",
    "Experience" : "NO",
    "Guardian Name" : "Charles and Sylia Gill"
]

var player6: [String: String] = [ /* String to String */
    "name" : "Kimmy Stein" ,
    "height": "41.0",
    "Experience" : "NO",
    "Guardian Name" : "Bill and Hillary Stein"
]

var player7: [String: String] = [ /* String to String */
    "name" : "Sammy Adams" ,
    "height": "45.0",
    "Experience" : "NO",
    "Guardian Name" : "Jeff Adams"
]

var player8: [String: String] = [ /* String to String */
    "name" : "Karl Saygan" ,
    "height": "42.0",
    "Experience" : "YES",
    "Guardian Name" : "Heather Bledsoe"
]

var player9: [String: String] = [ /* String to String */
    "name" : "Suzane Greenberg" ,
    "height": "44.0",
    "Experience" : "YES",
    "Guardian Name" : "Henrietta Dumas"
]

var player10: [String: String] = [ /* String to String */
    "name" : "Sal Dali" ,
    "height": "41.0",
    "Experience" : "NO",
    "Guardian Name" : "Gala Dali"
]

var player11: [String: String] = [ /* String to String */
    "name" : "Joe Kavalier" ,
    "height": "39.0",
    "Experience" : "NO",
    "Guardian Name" : "Sam and Elaine Kavalier"
]

var player12: [String: String] = [ /* String to String */
    "name" : "Ben Finkelstein" ,
    "height": "44.0",
    "Experience" : "NO",
    "Guardian Name" : "Aaron and Jill Finkelstein"
]

var player13: [String: String] = [ /* String to String */
    "name" : "Diego Soto" ,
    "height": "41.0",
    "Experience" : "YES",
    "Guardian Name" : "Robin and Sarika Soto"
]

var player14: [String: String] = [ /* String to String */
    "name" : "Chloe Alaska" ,
    "height": "47.0",
    "Experience" : "NO",
    "Guardian Name" : "David and Jamie Alaska"
]

var player15: [String: String] = [ /* String to String */
    "name" : "Arnold Willis" ,
    "height": "43.0",
    "Experience" : "NO",
    "Guardian Name" : "Claire Willis"
]

var player16: [String: String] = [ /* String to String */
    "name" : "Philip Helm" ,
    "height": "44.0",
    "Experience" : "YES",
    "Guardian Name" : "Thormas Helm and Eva Jones"
]

var player17: [String: String] = [ /* String to String */
    "name" : "Las Clay" ,
    "height": "42.0",
    "Experience" : "YES",
    "Guardian Name" : "Wynonna Brown"
]

var player18: [String: String] = [ /* String to String */
    "name" : "Herschel Krustofski" ,
    "height": "45.0",
    "Experience" : "YES",
    "Guardian Name" : "Hyman and Rachel Krustofski"
]

/**********************/

/* sort players into 2 group ( Experience vs InExperience ) */

let allPlayers : [[String: String]] = [player1,player2,player3,player4,player5,player6,player7,player8,player9,player10,player11,player12,player13,player14,player15,player16,player17,player18]

//allPlayers[0]["Experience"] == "YES"

func sortByExperienced (allPlayers: [[String:String]]) -> (experiencedPlayer : [[String:String]], inExperiencedPlayer : [[String:String]]) {
    
    var experiencedPlayer : [[String:String]] = []
    var inExperiencedPlayer : [[String: String]] = []
    
    for allPlayer in allPlayers {
            if allPlayer["Experience"] == "YES" {
                experiencedPlayer.append(allPlayer)
            } else if allPlayer["Experience"] == "NO" {
                inExperiencedPlayer.append(allPlayer)
        }
    }
    return (experiencedPlayer, inExperiencedPlayer)
}

//sortByExperienced(allPlayers: allPlayers).experiencedPlayer.count
//sortByExperienced(allPlayers: allPlayers).inExperiencedPlayer.count



