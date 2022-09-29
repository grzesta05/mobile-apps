private protocol ParagraphGameReq{
    func printState() -> Void
    func losingCondition() -> Bool
    func optionsPrompt() -> Void
    func getRandomEvent() -> Void
}

class Game : ParagraphGameReq{
    private var resources = 50.0
    private var safety = 50.0
    private var social_trust = 80.0
    private var outbreak_risk = 0.01
    private var currentEventID = "0"
    private var nextEvents : [String] = []
    private var changes : [Double] = [0,0,0,0]
    
    init() {
        while(losingCondition())
        {
            printState()
            optionsPrompt()
            getRandomEvent()
            currentEventID = nextEvents.remove(at: 0)
            print("", terminator: Array(repeating: "\n", count: 100).joined())
        }
    }
    
    private func applyConsequences(consequence : Consequence)
    {
        resources += consequence.change_resources
        changes[0] = consequence.change_resources
        safety += consequence.change_safety
        changes[1] = consequence.change_safety
        social_trust += consequence.change_social_trust
        changes[2] = consequence.change_social_trust
        if(outbreak_risk + consequence.change_outbreak_risk < 0)
        {
            changes[3] = outbreak_risk
            outbreak_risk = 0.0
        }else{
            outbreak_risk += consequence.change_outbreak_risk
            changes[3] = consequence.change_outbreak_risk
        }
    }
    
    fileprivate func optionsPrompt() {
        var options : [Option] = main_events[currentEventID]!.options
        for (i, a) in options.enumerated(){
            print("\(a.content) - press \(i)", terminator: "\n")
        }
        let chosen: Int = Int(readLine() ?? "0") ?? 0
        applyConsequences(consequence: options[chosen].result)
    }
    fileprivate func getRandomEvent() -> Void
    {
        let randomNumber = Int.random(in: 1..<main_events.count)
        nextEvents.append(String(randomNumber))
    }
    
    fileprivate func losingCondition() -> Bool {
        var fail: Fail?
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
        if(!(fail == nil))
        {
            fail!.printFailMessage(stats: [resources, safety, social_trust, outbreak_risk]);
            return false;
        }
        return true;
    }
    
    fileprivate func printState()  -> Void{
        let output : String = String(format: """
    Resources:     %f \(changes[0] > 0 ? "+ " : "- ") \(changes[0])
    Safety:        %f \(changes[1] > 0 ? "+ " : "- ") \(changes[1])
    Social Trust:  %f \(changes[2] > 0 ? "+ " : "- ") \(changes[2])
    Outbreak Risk: %f %% \(changes[3] > 0 ? "+ " : "- ") \(changes[3])
    \n
    \n
    %@
    %@
    \n
""", resources, safety, social_trust, outbreak_risk, main_events[currentEventID]!.title, main_events[currentEventID]!.description)
        print(output)
    }
}

var playAgain = 0
repeat{
    var a = Game()
    print("Would you like to play again? yes - 1, no - 0")
    playAgain = Int(readLine() ?? "0") ?? 0
} while playAgain != 0

