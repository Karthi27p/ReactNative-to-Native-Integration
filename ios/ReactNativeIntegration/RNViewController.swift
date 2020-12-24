//
//  RNViewController.swift
//  ReactNativeIntegration
//
//  Created by Karthi on 23/12/20.
//  Copyright © 2020 Karthi. All rights reserved.
//

import UIKit
import React

class RNViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let jsBundleLocation = Bundle.main.url(forResource: "main", withExtension: "jsbundle")
        //let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")
//        //The data is used as initialProperties to React Native App.
        let data:NSDictionary = [:]; //We can use this parameter to pass the data to the React native App from the Native App.
//        //The RCTRootView is a native view used to host React-managed views within the app. Can be used just like any ordinary UIView.
           let rootView = RCTRootView(
            bundleURL: jsBundleLocation!,
        moduleName: "RestApiApp",
        initialProperties: data as [NSObject : AnyObject],
        launchOptions: nil)
        self.view = rootView
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
