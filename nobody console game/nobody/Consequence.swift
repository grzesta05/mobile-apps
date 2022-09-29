//
//  Consequence.swift
//  nobody
//
//  Created by Grzegorz Majgier on 23/09/2022.
//

import Foundation

class Consequence{
    var change_resources : Decimal
    var change_safety: Decimal
    var change_social_trust: Decimal
    var change_outbreak_risk: Decimal
    
    init(_ resources: Decimal,_ safety: Decimal, _ social_trust: Decimal, _ outbreak_risk: Decimal) {
        self.change_resources = resources
        self.change_safety = safety
        self.change_social_trust = social_trust
        self.change_outbreak_risk = outbreak_risk
    }
}
