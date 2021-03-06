//
//  BBMainController.swift
//  iEat
//
//  Created by wave on 16/6/28.
//  Copyright © 2016年 wave. All rights reserved.
//

import UIKit

class BBMainController: BBBaseController {

    override func loadView() {
        super.loadView()
        
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setNavBar()
    }
    
    //navBarStyle
    private func setNavBar(){
        self.navigationItem.title = "今天吃什么?"
        let navigationTitleAttribute: NSDictionary = NSDictionary(object: UIColor.whiteColor(), forKey: NSForegroundColorAttributeName)
        self.navigationController?.navigationBar.titleTextAttributes = navigationTitleAttribute as? [String : AnyObject]
        
        removeNavigationBarShadow()
        navigationController?.navigationBar.translucent = false
        navigationController?.navigationBar.barTintColor = UIColor.kBasis_lightOrange_Color()
        
        let rightItem = UIBarButtonItem(image: UIImage.init(named: "btn_settings"), style: UIBarButtonItemStyle.Done, target: self, action: #selector(BBMainController.onClickSettingsItem))
        rightItem.image = UIImage(named: "btn_settings")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        self.navigationItem.rightBarButtonItem = rightItem
        
        let leftItem = UIBarButtonItem(image: UIImage.init(named: "restaurantMaidanIcon"), style: UIBarButtonItemStyle.Done, target: self, action: #selector(BBMainController.onClickRestaurantMaidanItem))
        leftItem.image = UIImage(named: "restaurantMaidanIcon")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        self.navigationItem.leftBarButtonItem = leftItem

    }
    
    @objc private func onClickSettingsItem(){
        let settingsVC = BBSettingsController()
        self.showViewController(settingsVC, sender: self)
    }
    
    @objc private func onClickRestaurantMaidanItem(){
        
        let vc = BBRestaurantMaidanController()
        self.showViewController(vc, sender: self)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        let touch = (touches as NSSet).anyObject()
        if touch?.view.tag == 1 || (touch?.view.isKindOfClass(BBAddView))!{
            
            let vc = BBNewOrEditRestaurantController()
            BBSettings.defaultSettings.currentShowView = "newRestaurant"
            self.wxs_presentViewController(vc, animationType: .PointSpreadPresent, completion: nil)
        }else if touch?.view.tag == 2{
            
            let vc = BBOldRestaurantController()
            self.wxs_presentViewController(vc, animationType: .PointSpreadPresent, completion: nil)
        }
    }

    private lazy var mainView: BBMainView = {
        
        let mainView = BBMainView.init(frame: self.view.bounds)
        return mainView
    }()
}
