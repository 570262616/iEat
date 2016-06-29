//
//  BBSettings.swift
//  iEat
//
//  Created by wave on 16/6/28.
//  Copyright © 2016年 wave. All rights reserved.
//

import UIKit

let screenWidth = UIScreen.mainScreen().bounds.size.width
let screenHeight = UIScreen.mainScreen().bounds.size.height

//notificationKey

//notificationName

//NSUserDefaultsKey
let kFirstInstall = "firstInstall";


class BBSettings: NSObject {

    static let defaultSettings = BBSettings();
    
    //isFirstInstall
    var firstInstall : Bool?{
        get{
            return NSUserDefaults.standardUserDefaults().boolForKey(kFirstInstall)
        }
        set{
            NSUserDefaults.standardUserDefaults().setBool(newValue!, forKey: kFirstInstall)
        }
    }
    
}
