//
//  ViewController.swift
//  lsStudySwift
//
//  Created by fei on 2018/7/6.
//  Copyright © 2018年 LSPO. All rights reserved.
//

import UIKit
import AFNetworking

class ViewController: UITableViewController {

    let viewControllerNames = ["LSStudyBaseComponent",
                               "LSStudyOperator",
                               "LSStudyStringValue",
                               "LSStudySetType",
                               "LSStudyControlFlow",
                               "LSStudyFunctions",
                               "LSStudyCloseure",
                               "LSStudyEnumeration",
                               "LSStudyClassesAndStructures",
                               "LSStudyProperty"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewControllerNames.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = viewControllerNames[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let className = viewControllerNames[indexPath.row]
        let ClassName = NSClassFromString("lsStudySwift."+className) as! UIViewController.Type
        
        let vc = ClassName.init()
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    func loadData(){
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

