import UIKit


//================ declare 18 players as dictionaries ==============//
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
//================== Collection of all players data ===================//
let allPlayers : [[String: String]] = [player1,player2,player3,player4,player5,player6,player7,player8,player9,player10,player11,player12,player13,player14,player15,player16,player17,player18]

//======================================================================//

//===== sort players into 2 group ( Experience vs InExperience ) =======//
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

//======================================================================//

//============= Bubble Sort for the height of allPlayers ===============//
func sortByHeigh (player : [[String: String]]) -> ([[String:String]]) {
    var somePlayers = player
    
    for i in 0..<somePlayers.count {
        for j in 1..<somePlayers.count-i{
            if (somePlayers[j]["height"]! as NSString).doubleValue < (somePlayers[j-1]["height"]! as NSString).doubleValue {
                let tmp = somePlayers[j-1]
                somePlayers[j-1] = somePlayers[j]
                somePlayers[j] = tmp
            }
        }
    }
    
    return somePlayers
}

//======================================================================//

//== Calculated the players in each team with the average height within 1.5 inches of other team ==//
//=================== 1. Calculated total players in Team Dragons ================//
func calculatedPlayers4TeamDragons (experiencePlayers: [[String:String]],inExperiencePlayers: [[String:String]]) -> ([[String:String]]) {
    
    var teamDragons: [[String: String]] = []
    var experiencePlayerHeight: [[String:String]] = experiencePlayers
    var inExperiencePlayerHeight: [[String:String]] = inExperiencePlayers
    
    for i in stride(from: 1, through: sortByExperienced(allPlayers: allPlayers).experiencedPlayer.count, by: sortByExperienced(allPlayers: allPlayers).experiencedPlayer.count / 3){
        experiencePlayerHeight[i-1].updateValue("Team Dragons", forKey: "Team")
        inExperiencePlayerHeight[i+1].updateValue("Team Dragon", forKey: "Team")
        experiencePlayerHeight[i-1].updateValue("March 17 , 1 p.m ", forKey: "Date")
        inExperiencePlayerHeight[i+1].updateValue("March 17 , 1 p.m ", forKey: "Date")
        teamDragons += [experiencePlayerHeight[i-1]] + [inExperiencePlayerHeight[i+1]]
    }
    
    return (teamDragons)
}

//=================== 2. Calculated total players in Team Sharks ================//
func calculatedPlayers4TeamSharks (experiencePlayers: [[String:String]],inExperiencePlayers: [[String:String]]) -> ([[String:String]]) {
    
    var teamSharks: [[String:String]] = []
    var experiencePlayerHeight: [[String:String]] = experiencePlayers
    var inExperiencePlayerHeight: [[String:String]] = inExperiencePlayers
    
    for i in stride(from: 2, through: sortByExperienced(allPlayers: allPlayers).experiencedPlayer.count, by: sortByExperienced(allPlayers: allPlayers).experiencedPlayer.count / 3){
        experiencePlayerHeight[i-1].updateValue("Team Sharks", forKey: "Team")
        inExperiencePlayerHeight[i-1].updateValue("Team Sharks", forKey: "Team")
        experiencePlayerHeight[i-1].updateValue("March 17 , 3 p.m ", forKey: "Date")
        inExperiencePlayerHeight[i-1].updateValue("March 17 , 3 p.m ", forKey: "Date")
        teamSharks += [experiencePlayerHeight[i-1]] + [inExperiencePlayerHeight[i-1]]
    }
    
    return (teamSharks)
}

//=================== 3. Calculated total players in Team Raptors ================//
func calculatedPlayers4TeamRaptors (experiencePlayers: [[String:String]],inExperiencePlayers: [[String:String]]) -> ([[String:String]]) {
    
    var teamRaptors: [[String: String]] = []
    var experiencePlayerHeight: [[String:String]] = experiencePlayers
    var inExperiencePlayerHeight: [[String:String]] = inExperiencePlayers
    
    for i in stride(from: 3, through: sortByExperienced(allPlayers: allPlayers).experiencedPlayer.count, by: sortByExperienced(allPlayers: allPlayers).experiencedPlayer.count / 3){
        experiencePlayerHeight[i-1].updateValue("Team Raptors", forKey: "Team")
        inExperiencePlayerHeight[i-3].updateValue("Team Raptors", forKey: "Team")
        experiencePlayerHeight[i-1].updateValue("March 18 , 1 p.m ", forKey: "Date")
        inExperiencePlayerHeight[i-3].updateValue("March 18 , 1 p.m ", forKey: "Date")
        teamRaptors += [experiencePlayerHeight[i-1]] + [inExperiencePlayerHeight[i-3]]
    }
    
    return (teamRaptors)
}

//======================================================================//

//================= Calculate the average height of each team ==================//

func showAvgHeight (teamName : ([[String:String]])) -> Double{
    
    var totalHeight: [Double] = []
    var total: Double = 0.0
    
    for player in teamName {
        let height = (player["height"]! as NSString).doubleValue
        totalHeight.append(height)
    }
    
    for height in totalHeight {
        total += height
    }
    
    let avgHeight : Double = total/Double(teamName.count)
    return avgHeight
}

//======================================================================//

/*================= Generates personalized letter to the guardians ========================//
 (6 letters from each team)*/
func sendLetter2Guardian (teamName: [[String:String]]) {
    
    for player in teamName {
        if let playerName = player["name"],
            let teamName = player["Team"],
            let guardianName = player["Guardian Name"],
            let practiceTime = player["Date"] {
            
            print("\nDear \(guardianName),\n")
            print("On behalf of \(teamName), we inform you about the selection of the player, \(playerName), to practice with the team on \(practiceTime)\n")
            print("For further information please contact the \(teamName) Adminstrator, \n")
            print("Yours faithfully,\n")
            print("\n")
            
        }
    }
}
//========================== Instances ========================//
// 1. access data from collection
allPlayers[0]["Experience"] == "YES"
allPlayers[3]["name"]
allPlayers[7]["height"]

// 2. Sort by experience
let sortedPlayerss = sortByHeigh(player: sortByExperienced(allPlayers: allPlayers).experiencedPlayer)
let inExpSorted = sortByHeigh(player: sortByExperienced(allPlayers: allPlayers).inExperiencedPlayer)

// 3. Sort by the Height ( when we firgure out the number of experienced and un-experience, we contiue on sort those by their height)
let sortedExPlayerByHeight = sortByHeigh(player: sortedPlayerss)
let sortedUnExPlayerByHeight = sortByHeigh(player: inExpSorted)

// 4. Calculate players from each team with the same amount of experienced and un-experienced with the average within 1.5 inches, and We also inclued Team name, and practice time
let teamDragons = calculatedPlayers4TeamDragons(experiencePlayers: sortedPlayerss, inExperiencePlayers: inExpSorted)
let teamSharks = calculatedPlayers4TeamSharks(experiencePlayers: sortedPlayerss, inExperiencePlayers: inExpSorted)
let teamRaptors = calculatedPlayers4TeamRaptors(experiencePlayers: sortedPlayerss, inExperiencePlayers: inExpSorted)

print(teamDragons)
//print(teamDragons[1]["Team"])
print("+++++++++++++++++++++++++++++++++")
print(teamSharks)
//print(teamSharks[1]["Team"])
print("+++++++++++++++++++++++++++++++++")
print(teamRaptors)
//print(teamRaptors[1]["Team"])
print("+++++++++++++++++++++++++++++++++")

// 5. Calulate the average height of each team
let teamDragonsAvg = showAvgHeight(teamName: teamDragons)
let teamSharksAvg = showAvgHeight(teamName: teamSharks)
let teamRaptorsAvg = showAvgHeight(teamName: teamRaptors)

print("\nThis is the Height Average for team Dragon:")
print(teamDragonsAvg)
print("\nThis is the Height Average for team Raptors:")
print(teamRaptorsAvg)
print("\nThis is the Height Average for team Sharks:")
print(teamSharksAvg)

// 6. Send letter to each guardian to inform the team name, player name, guardian name and practise time
sendLetter2Guardian(teamName: teamDragons)
print("=============================================================")
sendLetter2Guardian(teamName: teamSharks)
print("=============================================================")
sendLetter2Guardian(teamName: teamRaptors)
print("=============================================================")

// 7.stored collection 'letters' with 18 letters
print("\n\n========== stored collection 'letters' with 18 letters ============")
let letters = [sendLetter2Guardian(teamName: teamDragons),
               sendLetter2Guardian(teamName: teamSharks),
               sendLetter2Guardian(teamName: teamRaptors)]

//print(letters)
