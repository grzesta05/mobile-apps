	//
//  main.swift
//  nobody nobody nobody nobody
//
//  Created by Grzegorz Majgier on 09/09/2022.
//
let vowels : [String] = ["a", "e", "i", "o", "u", "y"]
let specialNames : [String] = ["Kuba"]
let pesel : String = readLine() ?? "98082656747"
let name : String = readLine() ?? "Przemek"

func nameValidation(name : String)
{
    if(vowels.firstIndex(of: String(name.suffix(1))) ==    nil || specialNames.firstIndex(of: name) != nil)
    {
        print("It's a boy!!!!")
    }else{
        print("Queen slay!!!!")
    }
}

func peselValidation(pesel : String)
{
    let start = pesel.startIndex
    let end = pesel.endIndex
    let date : String = String(pesel[start...pesel.index(start,offsetBy: 6)])
    let isMan : Bool = Int(pesel.getChar(6)) % 2 == 0 ? true : false
    print("is a man"  + isMan)
    
}

