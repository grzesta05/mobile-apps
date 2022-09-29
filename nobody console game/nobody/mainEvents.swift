//
//  mainEvents.swift
//  nobody
//
//  Created by Grzegorz Majgier on 23/09/2022.
//

import Foundation

let smallDif : Double = 2
let mediumDif : Double = 5
let bigDif : Double = 10
let hugeDif : Double = 20

class People{
    static let general = "General Sam"
    static let farmer = "Farmer David"
    static let assistant = "Assistant Marvin"
    static let ministerF = "Minister Sasha"
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
    
    
//    "resourcesFail" : Fail(),
//    "outbreak_riskFail": Fail(),
//    "safetyFail" : Fail(),
//    "social_trustFail" : Fail()
]
