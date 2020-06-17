import UIKit

class AdLoader: NSObject {
    
    override init() {
        super.init();
        PokktAds.setPokktConfigWithAppId("APPID", securityKey: "SECKEY");
        PokktDebugger.setDebug(false);
    }
    
    func cache() {
        PokktAds.cacheAd("SCREENID", with: self);
    }
    
    func show(controller:ViewController) {
        PokktAds.showAd("SCREENID", with: controller, with: self);
    }
}

extension AdLoader:PokktAdDelegate {
        
    func adCachingResult(_ screenId: String!, isSuccess success: Bool, withReward reward: Double, errorMessage: String!) {
        print("adCache");
    }
    
    func adDisplayResult(_ screenId: String!, isSuccess success: Bool, errorMessage: String!) {
        print("adDisplay");
    }
    
    func adClosed(_ screenId: String!, adCompleted: Bool) {
        print("adClosed");
    }
    
    func adClicked(_ screenId: String!) {
        print("adClicked");
    }
    
    func adGratified(_ screenId: String!, withReward reward: Double) {
        print("adGratified");
    }
}
