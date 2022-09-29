//
//  Consequence.swift
//  nobody
//
//  Created by Grzegorz Majgier on 23/09/2022.
//

import Foundation

class Consequence{
    var change_resources : Double
    var change_safety: Double
    var change_social_trust: Double
    var change_outbreak_risk: Double
    
    init(_ resources: Double,_ safety: Double, _ social_trust: Double, _ outbreak_risk: Double) {
        self.change_resources = resources
        self.change_safety = safety
        self.change_social_trust = social_trust
        self.change_outbreak_risk = outbreak_risk
    }
}
