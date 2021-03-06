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
let kSelectedSpicyLevelKey              = "selectedSpicyLevelKey"
let kSelectedPhotoCollectionViewCellKey = "selectedPhotoCollectionViewCellKey"
let kTakePhotoDataKey                   = "takePhotoDataKey"

//notificationName
let kSelectedSpicyLevelNotification                  = "selectedSpicyLevelNotification"
let kSelectedTakePhotoCollectionViewCellNotification = "selectedTakePhotoCollectionViewCellNotification"
let kTakePhotoDataNotificationName                   = "takePhotoDataNotificationName"

//NSUserDefaultsKey
let kIsSelectedSettingsLogout = "isSelectedSettingsLogout"
let kUserId                   = "userId"
let kQiniuToken               = "qiniuToken"
let kCurrentShowView          = "currentShowView"
let kCurrentClickMaidanItem   = "currentClickMaidanItem"


class BBSettings: NSObject {

    static let defaultSettings = BBSettings();
    
    //isSelectedSettingsLogout
    var isSelectedSettingsLogout : Bool?{
        get{
            return NSUserDefaults.standardUserDefaults().boolForKey(kIsSelectedSettingsLogout)
        }
        set{
            NSUserDefaults.standardUserDefaults().setBool(newValue!, forKey: kIsSelectedSettingsLogout)
        }
    }
    
    //token
    var qiniuToken : String?{
        get{
            return NSUserDefaults.standardUserDefaults().stringForKey(kQiniuToken)
        }
        set{
            NSUserDefaults.standardUserDefaults().setObject(newValue, forKey: kQiniuToken)
        }
    }
    
    //userId
    var userId : String?{
        get{
            return NSUserDefaults.standardUserDefaults().stringForKey(kUserId)
        }
        set{
            NSUserDefaults.standardUserDefaults().setObject(newValue, forKey: kUserId)
        }
    }
    
    //判断用户是在添加还是编辑界面
    var currentShowView : String?{
        get{
            return NSUserDefaults.standardUserDefaults().stringForKey(kCurrentShowView)
        }
        set{
            NSUserDefaults.standardUserDefaults().setObject(newValue, forKey: kCurrentShowView)
        }
    }
    
    //判断用户点击的广场还是自己列表进入的detail界面
    var currentClickMaidanItem : Bool{
        get{
            return NSUserDefaults.standardUserDefaults().boolForKey(kCurrentClickMaidanItem)
        }
        set{
            NSUserDefaults.standardUserDefaults().setBool(newValue, forKey: kCurrentClickMaidanItem)
        }
    }
    
}
