//
//  main.swift
//  5arrays
//
//  Created by Grzegorz Majgier on 30/09/2022.
//

import Foundation

class matrix{
    var matrix : [[Int]]
    init() {
        do{
            
        }catc
    }
}

func deleteOtherThanInt(array : [Any]) -> [Int]{
    return (array.filter{type(of: $0) == Int.self} as! [Int])
}

func rotateArray(arrayI : [Any], how : String) -> Void
{
    var array = arrayI
    let rOrL = how.prefix(1)
    let howMuch = Int(how.suffix(1))!
    
    if(rOrL == "L")
    {
        for i in 0...howMuch
        {
            print(i, " ", array)
            array.append(array.first!)
            array.remove(at: 0)
        }
    }else{
        for i in 0...howMuch
        {
            print(i, " ", array)
            array.insert(array.last!, at: 0)
            array.popLast()
        }
    }
}

rotateArray(arrayI: [1,2,3], how: "R2")
print(deleteOtherThanInt(array: [1,2,3,4.0, "hee hee", 7	]))
