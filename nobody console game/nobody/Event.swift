//
//  Event.swift
//  nobody
//
//  Created by Grzegorz Majgier on 23/09/2022.
//

import Foundation

class Event{
    var options : [Option]
    var title : String
    var description : String
    init(title: String, description: String, options: [Option]) {
        self.options = options
        self.title = title
        self.description = description
    }
    
    func selectOption(index : Int)
    {
        
    }
}
