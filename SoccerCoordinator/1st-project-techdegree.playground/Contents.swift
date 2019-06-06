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
var allPlayers : [[String: String]] = [player1,player2,player3,player4,player5,player6,player7,player8,player9,player10,player11,player12,player13,player14,player15,player16,player17,player18,/*player12 I added this one (player12) to test if the code giving any fatal error but it does not occur any issue, and I do understand what you suggested to my code, thank you for the feedbacks*/]

var teamDragons: [[String: String]] = []
var teamSharks: [[String:String]] = []
var teamRaptors: [[String: String]] = []
let numberOfTeam = [teamDragons,teamRaptors,teamSharks]

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
/* I changed a bit here since I wanted 2 different lists of experienced and unexperienced.
    Therefore, I make 1 function for experienced and another for un-experienced */
func sortByHeighWithExp (player : [[String: String]]) -> ([[String:String]]) {
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
//=========== Bubble Sorted for un-Experienced players in reversed order ===============//

func sortByHeighWithNoExp (player : [[String: String]]) -> ([[String:String]]) {
    var somePlayers = player
    
    for i in 0..<somePlayers.count {
        for j in 1..<somePlayers.count-i{
            if (somePlayers[j]["height"]! as NSString).doubleValue > (somePlayers[j-1]["height"]! as NSString).doubleValue {
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
/* ===== It needs to be the collection of (sorted Experience with sorted Height player)
                and (sorted No Experience with sorted Height player) ========= */

func calculatedPlayers4TeamDragons (experiencePlayersWithHeight: [[String:String]],inExperiencePlayersWithHeight: [[String:String]]) -> ([[String:String]]) {
    
    
    var experiencePlayerHeight: [[String:String]] = experiencePlayersWithHeight
    var inExperiencePlayerHeight: [[String:String]] = inExperiencePlayersWithHeight
    
    /*
    for i in stride(from: 1, through: sortByExperienced(allPlayers: allPlayers).experiencedPlayer.count, by: sortByExperienced(allPlayers: allPlayers).experiencedPlayer.count / 3){
        experiencePlayerHeight[i-1].updateValue("Team Dragons", forKey: "Team")
        inExperiencePlayerHeight[i+1].updateValue("Team Dragon", forKey: "Team")
        experiencePlayerHeight[i-1].updateValue("March 17 , 1 p.m ", forKey: "Date")
        inExperiencePlayerHeight[i+1].updateValue("March 17 , 1 p.m ", forKey: "Date")
        teamDragons += [experiencePlayerHeight[i-1]] + [inExperiencePlayerHeight[i+1]]
    } */
    for player in 0..<experiencePlayerHeight.count{
        if player % numberOfTeam.count == 0 {
            experiencePlayerHeight[player].updateValue("Team Dragons", forKey: "Team")
            experiencePlayerHeight[player].updateValue("March 17 , 1 p.m ", forKey: "Date")
            teamDragons.append(experiencePlayerHeight[player])
        }
    }
    //print("Done-Dragon-EX")
    for player in 0..<inExperiencePlayerHeight.count{
        if player % numberOfTeam.count == 0 {
            //print(player)
           //print("CHECKING1")
            inExperiencePlayerHeight[player].updateValue("Team Dragons", forKey: "Team")
            //print("CHECKING2")
            inExperiencePlayerHeight[player].updateValue("March 17 , 1 p.m ", forKey: "Date")
            //print("CHECKING3")
            teamDragons.append(inExperiencePlayerHeight[player])
            //print("CHECKING4")
            //print(inExperiencePlayerHeight[player])
            //print("\(teamDragons.count) asdasdasdasdsdasdasd")
        }
    }
     //print("Done-Dragon-TEAM")
    return (teamDragons)
    
}

//=================== 2. Calculated total players in Team Sharks ================//
/* ===== It needs to be the collection of (sorted Experience with sorted Height player)
            and (sorted No Experience with sorted Height player) ========= */
func calculatedPlayers4TeamSharks (experiencePlayersWithHeight: [[String:String]],inExperiencePlayersWithHeight: [[String:String]]) -> ([[String:String]]) {
    
    
    var experiencePlayerHeight: [[String:String]] = experiencePlayersWithHeight
    var inExperiencePlayerHeight: [[String:String]] = inExperiencePlayersWithHeight
    
    for player in 0..<experiencePlayerHeight.count{
        if player % numberOfTeam.count == 1 {
            //print(player)
            experiencePlayerHeight[player].updateValue("Team Sharks", forKey: "Team")
            experiencePlayerHeight[player].updateValue("March 17 , 3 p.m ", forKey: "Date")
            teamSharks.append(experiencePlayerHeight[player])
            //print(teamSharks)
     
        }
    }
     //print("Done-Sharks-Ex")
    for player in 0..<inExperiencePlayerHeight.count{
        if player % numberOfTeam.count == 1 {
            inExperiencePlayerHeight[player].updateValue("Team Sharks", forKey: "Team")
            inExperiencePlayerHeight[player].updateValue("March 17 , 3 p.m ", forKey: "Date")
            teamSharks.append(experiencePlayerHeight[player])
            }
    }
    //print("SHARKs-DoNEEEEEE")
        return (teamSharks)
        
}

//=================== 3. Calculated total players in Team Raptors ================//
func calculatedPlayers4TeamRaptors (experiencePlayersWithHeight: [[String:String]],inExperiencePlayersWithHeight: [[String:String]]) -> ([[String:String]]) {
    
    
    var experiencePlayerHeight: [[String:String]] = experiencePlayersWithHeight
    var inExperiencePlayerHeight: [[String:String]] = inExperiencePlayersWithHeight
    
    for player in 0..<experiencePlayerHeight.count{
     if player % numberOfTeam.count == 2 {
        //print(player)
        experiencePlayerHeight[player].updateValue("Team Raptors", forKey: "Team")
        experiencePlayerHeight[player].updateValue("March 18 , 1 p.m ", forKey: "Date")
        teamRaptors.append(experiencePlayerHeight[player])
        }
    }

    for player in 0..<inExperiencePlayerHeight.count{
     if player % numberOfTeam.count == 2 {
        //print(player)
        inExperiencePlayerHeight[player].updateValue("Team Raptors", forKey: "Team")
        inExperiencePlayerHeight[player].updateValue("March 18 , 1 p.m ", forKey: "Date")
        teamRaptors.append(inExperiencePlayerHeight[player])
        }
    }
    //print("Raptor-DONE-HERE")
    return (teamRaptors)
    
}
//======================================================================//

//================= 4. Calculate the average height of each team ==================//

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

/*================= 5. Generates personalized letter to the guardians ========================//
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
//==Test case for extra player
 /*let playerTest: [String: String] = [ /* String to String */
    "name" : "Henry Trinh" ,
    "height": "68.0",
    "Experience" : "NO",
    "Guardian Name" : "MYSELF"
]
allPlayers += [playerTest]
 */

// 2. Sort by experience (this step because i wanted to test out the value with different way to ensure i got the same thing that why I sortedByHeight here, sorry :) )
let sortedPlayerss = sortByExperienced(allPlayers: allPlayers).experiencedPlayer
let inExpSorted = sortByExperienced(allPlayers: allPlayers).inExperiencedPlayer
print(sortedPlayerss.count)
print(inExpSorted.count)
// 3. Sort by the Height ( when we firgure out the number of experienced and un-experience, we contiue on sort those by their height)
let sortedExPlayerByHeight = sortByHeighWithExp(player: sortedPlayerss )
let sortedUnExPlayerByHeight = sortByHeighWithNoExp(player: inExpSorted )


/* print those result to compare */
print("Compare the experience(no height sorting and sorting):\n")
print(sortedPlayerss)
print("\n")
print(sortedExPlayerByHeight)
print("\n")
print("============================================================")
print("\n")
print("Compare the NO-Experience(no height sorting and sorting in reversed order):\n")
print(inExpSorted)
print("\n")
print(sortedUnExPlayerByHeight)
print("\n")
print("============================================================")

// 4. Calculate players from each team with the same amount of experienced and un-experienced with the average within 1.5 inches, and We also inclued Team name, and practice time
let teamDragon = calculatedPlayers4TeamDragons(experiencePlayersWithHeight: sortedExPlayerByHeight,
                                               inExperiencePlayersWithHeight: sortedUnExPlayerByHeight)
let teamShark = calculatedPlayers4TeamSharks(experiencePlayersWithHeight: sortedExPlayerByHeight,
                                             inExperiencePlayersWithHeight: sortedUnExPlayerByHeight)
let teamRaptor = calculatedPlayers4TeamRaptors(experiencePlayersWithHeight: sortedExPlayerByHeight,
                                               inExperiencePlayersWithHeight: sortedUnExPlayerByHeight)
print("\n+++++++++++++++++++++++++++++++++")
print(teamDragon)
//print(teamDragon[1]["Team"])
print("+++++++++++++++++++++++++++++++++")
print(teamShark)
//print(teamSharks[1]["Team"])
print("+++++++++++++++++++++++++++++++++")
print(teamRaptor)
//print(teamRaptors[1]["Team"])
print("+++++++++++++++++++++++++++++++++")

// 5. Calulate the average height of each team
let teamDragonsAvg = showAvgHeight(teamName: teamDragon)
let teamSharksAvg = showAvgHeight(teamName: teamShark)
let teamRaptorsAvg = showAvgHeight(teamName: teamRaptor)

print("\nThis is the Height Average for team Dragon:")
print(teamDragonsAvg)
print("\nThis is the Height Average for team Raptors:")
print(teamRaptorsAvg)
print("\nThis is the Height Average for team Sharks:")
print(teamSharksAvg)

// 6. Send letter to each guardian to inform the team name, player name, guardian name and practise time
sendLetter2Guardian(teamName: teamDragon)
print("=============================================================")
sendLetter2Guardian(teamName: teamShark)
print("=============================================================")
sendLetter2Guardian(teamName: teamRaptor)
print("=============================================================")

// 7.stored collection 'letters' with total numbers of letters
let totalLetters = teamDragon.count + teamRaptor.count + teamShark.count
print("\n\n========== stored collection 'letters' of \(totalLetters) letters ============")
let letters = [sendLetter2Guardian(teamName: teamDragon),
               sendLetter2Guardian(teamName: teamShark),
               sendLetter2Guardian(teamName: teamRaptor)]
//print(letters)
