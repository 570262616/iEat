//
//  BBBaseRestaurantCell.swift
//  iEat
//
//  Created by wave on 16/6/29.
//  Copyright © 2016年 wave. All rights reserved.
//

import UIKit

class BBBaseRestaurantCell: UITableViewCell {

    override func layoutSubviews() {
        super.layoutSubviews()
        
        backgroundColor = UIColor.kBasis_lightLightOrange_Color()
        selectionStyle = .None
        
        addSubview(titleLbl)
        titleLbl.textColor = UIColor.kBasis_DeepGray_COLOR()
    }
    
    lazy var titleLbl : UILabel = {
        
        let titleLabel = UILabel()
        titleLabel.frame = CGRectMake(8, (self.height - 30) * 0.5, 80, 30)
        return titleLabel
    }()
}
