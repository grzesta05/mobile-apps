//
//  Fail.swift
//  nobody
//
//  Created by Grzegorz Majgier on 23/09/2022.
//

import Foundation

enum Factors{
    case SocialTrust
    case Resources
    case Safety
    case OutbreakRisk
}

let failMessages : [String] = [
    "Your village has lost the resources. Rebellious movements killed you, but soon after the whole village starved to death",
    "Attack of the Infected was inevitable, considering your lack of attention to defence. After the attack your state deteriorates and you are driven to madness",
    "You have failed. People don't trust you anymore. You wake up to warm streams coming out of your throat. You have been murdered in sleep",
    "The virus... it started to spread last night... We are lost..."
]

class Fail{
    var type : Factors
    var message : String
    init(type: Factors) {
        self.type = type
        switch type{
            case .Resources:
                message = failMessages[0]
            case .Safety:
                message = failMessages[1]
            case .SocialTrust:
                message = failMessages[2]
            case .OutbreakRisk:
                message = failMessages[3]
        }
    }
    func printFailMessage(stats : [Double]){
        print("""
        Stats: \(stats.map{String($0)}.joined(separator: " "))
        \(message)
        """)
    }
}
