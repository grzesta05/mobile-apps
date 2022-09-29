//
//  option.swift
//  nobody
//
//  Created by Grzegorz Majgier on 23/09/2022.
//

import Foundation

class Option{
    var content : String
    var result : Consequence
    
    init(content: String, result: Consequence = Consequence(0, 0, 0, 0)) {
        self.content = content
        self.result = result
    }
}
