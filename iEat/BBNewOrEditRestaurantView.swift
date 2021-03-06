//
//  BBNewRestaurantView.swift
//  iEat
//
//  Created by wave on 16/6/29.
//  Copyright © 2016年 wave. All rights reserved.
//

import UIKit

class BBNewOrEditRestaurantView: BBBaseRestaurantView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(tableview)
        addSubview(maskTempView)        
        addSubview(pickerView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func showHeadTitle() -> String {
        if BBSettings.defaultSettings.currentShowView == "editRestaurant"{
            return "编辑餐厅"
        }else{
            return "添加新餐厅"
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        addSubview(selectedSpicyLeveView)
    }
    
    lazy var tableview : UITableView = {
        
        let tableview = UITableView.init(frame: CGRectMake(0, self.headerLine.bottom, self.width, self.height - 60))
        tableview.tableFooterView = UIView()
        tableview.separatorStyle = .None
        tableview.backgroundColor = UIColor.kBasis_lightLightOrange_Color()
        return tableview
    }()
    
    lazy var selectedSpicyLeveView : BBSelectedSpicyLevelView = {
        
        let selectedSpicyLeveView = BBSelectedSpicyLevelView()
        selectedSpicyLeveView.frame = CGRectMake((self.width - 300) * 0.5, -300, 300, 300)
        selectedSpicyLeveView.hidden = true
        return selectedSpicyLeveView
    }()
    
    lazy var pickerView : UIPickerView = {
        
        let pickerView = UIPickerView()
        pickerView.frame = CGRectMake(0, self.height, self.width, 200)
        pickerView.backgroundColor = UIColor.whiteColor()
        pickerView.showsSelectionIndicator = true
        return pickerView
    }()
    
    lazy var maskTempView : UIView = {
        
        let maskTempView = UIView.init(frame: UIScreen.mainScreen().bounds)
        maskTempView.backgroundColor = UIColor.clearColor()
        maskTempView.hidden = true
        return maskTempView
    }()
}
