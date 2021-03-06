//
//  BBOldRestaurantView.swift
//  iEat
//
//  Created by wave on 16/6/29.
//  Copyright © 2016年 wave. All rights reserved.
//

import UIKit

class BBOldRestaurantView: BBBaseRestaurantView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func showHeadTitle() -> String {
        return "查看餐厅"
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        addSubview(oldRestaurantCollectionView)
    }
    
    lazy var oldRestaurantCollectionView : UICollectionView = {
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .Vertical
        flowLayout.minimumLineSpacing = 5
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.itemSize = CGSizeMake(screenWidth * 0.5, 200)

        let oldRestaurantCollectionView = UICollectionView.init(frame: CGRectMake(0, self.headerLine.bottom, self.width, self.height - self.headerLine.bottom), collectionViewLayout: flowLayout)
        oldRestaurantCollectionView.backgroundColor = UIColor.whiteColor()
        oldRestaurantCollectionView.registerClass(BBOldRestaurantCell.self, forCellWithReuseIdentifier: "oldRestaurantCell")
        
        oldRestaurantCollectionView.backgroundColor = UIColor.kBasis_lightLightOrange_Color()
        return oldRestaurantCollectionView
    }()

    
    
    
}
