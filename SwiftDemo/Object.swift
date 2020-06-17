//
//  Object.swift
//  SwiftDemo
//
//  Created by Ranajit Chandra on 17/06/20.
//  Copyright © 2020 cranajit. All rights reserved.
//

import UIKit

class Object: NSObject {
    
    override init() {
        super.init();
        PokktAds.setPokktConfigWithAppId("appid", securityKey: "secid");
        PokktDebugger.setDebug(true);
    }
    
    func cache(delegate:PokktAdDelegate) {
        PokktAds.cacheAd("screenid", with: delegate);
    }
    
    func show(controller:ViewController, delegate:PokktAdDelegate) {
        PokktAds.showAd("screenid", with: controller, with: delegate);
    }
}
