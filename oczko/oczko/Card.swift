//
//  Card.swift
//  oczko
//
//  Created by Grzegorz Majgier on 07/10/2022.
//

import Foundation

class Card : Hashable{
    static func == (lhs: Card, rhs: Card) -> Bool {
        if lhs.UICard == rhs.UICard && lhs.value == rhs.value
        {
            return true
        }
        return false
    }
    var hashValue: Int {
        get{
            return UICard.hashValue << 15 + value.hashValue
        }
    }
    
    
    var UICard : String
    var value : Int
    init(UICard: String, value: Int) {
        self.UICard = UICard
        self.value = value
    }
}
