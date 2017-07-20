//
//  UINib+Additions.swift
//  Lango
//
//  Created by Asif Bilal on 01/08/2016.
//  Copyright © 2016 Asif Bilal. All rights reserved.
//

import UIKit

public extension UINib {
    convenience init(nibClassName:UIView.Type) {

        let bundle = Bundle(for: nibClassName)
        self.init(nibName: className(nibClassName), bundle: bundle)
    }
}
