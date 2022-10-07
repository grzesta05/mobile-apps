protocol PGame {
    func generateCardsQueue() -> Void
}



class Game{
        
    var types = ["1", "2", "3", "4"]
    var valuesPerFigure: [Int] = [Int](2...10)+[2,3,4,11]
    var figures: [String] = ([Int](2...10)).map(String.init) + ["W", "D", "K", "A"]
    var a : Set<Card> = [Card(UICard: "sraka", value: 1)]
    
    
}
