//
//  RatingControl.swift
//  First
//
//  Created by Winston Van on 10/3/16.
//  Copyright © 2016 Winston Van. All rights reserved.
//

import UIKit

class RatingControl: UIView {

    // MARK: Initialization
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
        button.backgroundColor = UIColor.green
        button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: UIControlEvents.touchDown)
        
        
        addSubview(button)
        

        
    }
    
    // MARK: Button action
    func ratingButtonTapped(button: UIButton) {
        print("Button Pressed")
    }
    
    
    
}
