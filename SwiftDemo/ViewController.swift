//
//  ViewController.swift
//  SwiftDemo
//
//  Created by Ranajit Chandra on 17/06/20.
//  Copyright © 2020 cranajit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let obj = Object();
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func cacheAd(_ sender: Any) {
        obj.cache(delegate: self)
    }
    
    @IBAction func showad(_ sender: Any) {
        obj.show(controller: self, delegate:self)
    }
}

extension ViewController:PokktAdDelegate {
        
    func adCachingResult(_ screenId: String!, isSuccess success: Bool, withReward reward: Double, errorMessage: String!) {
        if(success){
            PokktDebugger .showToast("SUCCESS", viewController: self);
        } else {
            PokktDebugger .showToast("FAILED", viewController: self);
        }
    }
    
    func adDisplayResult(_ screenId: String!, isSuccess success: Bool, errorMessage: String!) {
        if(success){
            PokktDebugger .showToast("SUCCESS", viewController: self);
        } else {
            PokktDebugger .showToast("FAILED", viewController: self);
        }
    }
    
    func adClosed(_ screenId: String!, adCompleted: Bool) {
        PokktDebugger .showToast("CLOSED", viewController: self);

    }
    
    func adClicked(_ screenId: String!) {
        PokktDebugger .showToast("CLICKED", viewController: self);

    }
    
    func adGratified(_ screenId: String!, withReward reward: Double) {
        PokktDebugger .showToast("GRATIFIED", viewController: self);

    }
}

