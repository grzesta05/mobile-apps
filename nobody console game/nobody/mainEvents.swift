//
//  mainEvents.swift
//  nobody
//
//  Created by Grzegorz Majgier on 23/09/2022.
//

import Foundation

private let smallDif : Double = 2
private let mediumDif : Double = 5
private let bigDif : Double = 10
private let hugeDif : Double = 20

class People{
    fileprivate static let general = "General Sam"
    fileprivate static let farmer = "Farmer David"
    fileprivate static let assistant = "Assistant Marvin"
    fileprivate static let ministerF = "Minister Sasha"
    fileprivate static let ministerH = "Minister Philip"
    fileprivate static let ministerA = "Minister Susan"
}


var main_events = [
    "0" : Event(
        title : "Mors ad Virum",
        description: """
        \(People.assistant): Tough times came. We… We didn't realise how important the virus development would be… At first, we created it to create superhumans, to make us stronger, more self-reliant and immune. Something went terribly wrong… You are nobody. Chosen by the people to lead them through the tough times. May the Virus die!
            Choose wisely. Every decision you make impacts the four factors above.
                - Dont let the first three fall below zero.
                - Outbreak risk above 80% will result in local pandemic
            Good luck.
        """,
        options : [Option("Alright...", Consequence(0,0,0,0))]
    ),
    "1" : Event(
        title: "Grow trees",
        description: "\(People.farmer): We would benefit from more g-green space, I think. Can we arrange that sir?",
        options: [
            Option("Yes, of course. The greenier the better!", Consequence(mediumDif,smallDif,smallDif,0)),
            Option("I don't think so...", Consequence(0,0,-smallDif,0))
        ]
    ),
    "2" : Event(
        title: "New recruiters",
        description: "\(People.general): We have to few people in the Watch. If something happens, who is going to protect us?",
        options: [
            Option("Make service in the Watch obligatory for men in age range 20-40", Consequence(-bigDif,bigDif,-smallDif,0)),
            Option("Make service in the Watch an obligation for people 18 - 25", Consequence(-smallDif,mediumDif,-bigDif,0)),
            Option("We don't need that",
                  Consequence(0, -bigDif, -smallDif, 0))
        ]
    ),
    "3" : Event(
        title: "Memorial",
        description: "\(People.assistant): Lets commemorate the ones that have fallen by the hand of the virus.",
        options: [
            Option("Sure!", Consequence(-smallDif,0,smallDif,mediumDif)),
            Option("We have no time for that", Consequence(0,0,-mediumDif,0))
        ]
    ),
    "4" : Event(
        title: "Trade with other village",
        description: "\(People.ministerF): Your neighbours might have many valuable resources that you can buy. This might mean trading excessive items for the one we need the most",
        options: [
            Option("Let's do it", Consequence(hugeDif,-smallDif,bigDif,smallDif)),
            Option("We have everything we need.", Consequence(0,0,-mediumDif,0))
        ]
    ),
    "5" : Event(
        title: "Reinforce the wall",
        description: "\(People.general): I think we should reinforce the wall that protects us from the outer, infected world. Safety first, ya know what they say",
        options: [
            Option("Sure!", Consequence(-smallDif,0,smallDif,mediumDif)),
            Option("We have no time for that", Consequence(0,0,-mediumDif,0))
        ]
    ),
    "6" : Event(
        title: "New restrictions",
        description: "\(People.ministerH): The risk of getting ill will not decrease... At least not for a very long time. We should set new restrictions to keep people safe. What do you think, sir?",
        options: [
            Option("Tough times require tough decisions.", Consequence(-smallDif,0,-mediumDif,-hugeDif)),
            Option("We are safe here.", Consequence(0,0,0,bigDif))
        ]
    ),
    "7" : Event(
        title: "Educated society",
        description: "\(People.ministerA): Educated society is strong society. It's high time we opened school for the youth of the village!",
        options: [
            Option("That's right! I'll open a school in every district", Consequence(-bigDif,0,bigDif,-mediumDif)),
            Option("One school for all districts should be enough", Consequence(-smallDif,smallDif,smallDif,-smallDif)),
            Option("We have no time nor money to do that!", Consequence(0,0,-mediumDif,smallDif))
        ]
    ),
    "8" : Event(
        title: "Resources Patrol",
        description: "\(People.general): Outer world very often hides valuable secrets. What if we sent a patrol out there to gain resources?",
        options: [
            Option("Ok, send a few people", Consequence(bigDif,-mediumDif,smallDif,mediumDif)),
            Option("Yes! Send as many people as you wish", Consequence(hugeDif,-bigDif,-smallDif,bigDif)),
            Option("Seems like a dumb idea. We're safe here and we've got what we need", Consequence(0, 0, smallDif, 0))
        ]
    ),
    "9" : Event(
        title: "Reinforce the wall",
        description: "\(People.general): I think we should reinforce the wall that protects us from the outer, infected world. Safety first, ya know what they say",
        options: [
            Option("Sure!", Consequence(-smallDif,0,smallDif,mediumDif)),
            Option("We have no time for that", Consequence(0,0,-mediumDif,0))
        ]
    ),
    "10" : Event(
        title: "Reinforce the wall",
        description: "\(People.general): I think we should reinforce the wall that protects us from the outer, infected world. Safety first, ya know what they say",
        options: [
            Option("Sure!", Consequence(-smallDif,0,smallDif,mediumDif)),
            Option("We have no time for that", Consequence(0,0,-mediumDif,0))
        ]
    ),
    
    
//    "resourcesFail" : Fail(),
//    "outbreak_riskFail": Fail(),
//    "safetyFail" : Fail(),
//    "social_trustFail" : Fail()
]
