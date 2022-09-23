//
//  Fail.swift
//  nobody
//
//  Created by Grzegorz Majgier on 23/09/2022.
//

import Foundation

enum Factors{
    case SocialTrust,
    case Resources,
    case Safety,
    case OutbreakRisk
    
}


class Fail{
    var type : Factors
    
    init(type: Factors) {
        self.type = type
    }
    printFailMessage(){
        
    }
}
