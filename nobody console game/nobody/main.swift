protocol ParagraphGameReq{
    func printState() -> Void
    func setEvent() -> Void
    func losingCondition() -> Bool
    func optionsPrompt() -> Void
}

class Game : ParagraphGameReq{
    var resources = 50.0
    var safety = 50.0
    var social_trust = 80.0
    var outbreak_risk = 0.01
    var currentEventID = "0"
    var nextEvents : [String] = []
    var changes = [0,0,0,0]
    
    init() {
        while(losingCondition())
        {
            printState()
            
        }
        
    }
    
    func getRandomEvent() -> Void
    {
        		
    }
    
    func losingCondition() -> Bool {
        var fail : Fail? = nil
        if(resources <= 0){
            fail = Fail(type: Factors.Resources)
        }
        if(safety <= 0)
        {
            fail = Fail(type: Factors.Safety)
        }
        if(social_trust <= 0)
        {
            fail = Fail(type: Factors.SocialTrust)
        }
        if(outbreak_risk >= 80)
        {
            fail = Fail(type: Factors.OutbreakRisk)
        }
        if(fail! == nil)
        {
            fail!.printFailMessage(stats: [resources, safety, social_trust, outbreak_risk]);
            return false;
        }
        return true;
    }
    
    func setEvent() -> Void {}
    func printState()  -> Void{
        let output : String = String(format: """
    Resources:     %d \(changes[0] > 0 ? "+ " : "- ") \(changes[0])
    Safety:        %d \(changes[1] > 0 ? "+ " : "- ") \(changes[1])
    Social Trust:  %d \(changes[2] > 0 ? "+ " : "- ") \(changes[2])
    Outbreak Risk: %f% \(changes[3] > 0 ? "+ " : "- ") \(changes[3])

    %@
    %@
""", resources, safety, social_trust, outbreak_risk, main_events[currentEventID]!.title, main_events[currentEventID]!.description)
        print(output)
    }
}
var a = Game()
