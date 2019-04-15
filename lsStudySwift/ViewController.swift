//
//  ViewController.swift
//  lsStudySwift
//
//  Created by fei on 2018/7/6.
//  Copyright © 2018年 LSPO. All rights reserved.
//

import UIKit
import AFNetworking

class ViewController: UIViewController {

    let maximuNumberofLoginAttempts = 10
    var currentLoginAttempt = 0
    
    var x = 0.0, y = 0.0, z = 0.0
    
    var welcomeMessage: String = "hello"
    
    var red = 1, green = 2,blue: Double = 2
    
    var friendlyWelcome = "Hello!"
    
    let languageName = "Swift"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        friendlyWelcome = "Bonjour!"
        print(friendlyWelcome,languageName);
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        welcomeMessage = "laidoa"
        NSLog(languageName)
        
        let newView = UIView.init()
        newView.backgroundColor = UIColor.init(red: 255, green: 0, blue: 0, alpha: 1)
        self.view.addSubview(newView)
        
    }
    
    
    func loadData(){
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

