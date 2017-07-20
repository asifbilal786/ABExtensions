//
//  UIImage+Additions.swift
//  Lango
//
//  Created by Asif Bilal on 10/08/2016.
//  Copyright © 2016 Asif Bilal. All rights reserved.
//

import UIKit

public extension UIImage {
    
    fileprivate class func resolveAdaptiveImageName(_ nameStem: String) -> String {
        
        let height = UIScreen.main.bounds.size.height
        
        if height > 568.0 {
            // Oversize @2x will be used for iPhone 6, @3x for iPhone 6+
            // iPads... we'll work that out later
            if height > 667.0 {
                return nameStem + "-oversize@3x"
            } else {
                return nameStem + "-oversize"
            }
        }
        return nameStem
    }
    
    class func adaptiveImageNamed(_ name: String) -> UIImage? {
        return UIImage(named: resolveAdaptiveImageName(name))
    }
    
}
