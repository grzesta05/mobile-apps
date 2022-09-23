protocol ParagraphGameReq{
    func printState()
    func setEvent()
}

class Game : ParagraphGameReq{
    var resources = 50
    var safety = 50
    var social_trust = 80
    var outbreak_risk = 0.01
    var currentEventID = "init"
    init() {
        
    }
    
}
