//
//  UIStoryboard+Additions.swift
//  Lango
//
//  Created by Asif Bilal on 01/08/2016.
//  Copyright © 2016 Asif Bilal. All rights reserved.
//

import UIKit

public extension UIStoryboard {
    
    // MARK: Specific Methods
    class func storyboardMenu() -> UIStoryboard {
        return self.storyboard(loadWithName: "Menu")
    }
    
    class func storyboardRegister() -> UIStoryboard {
        return self.storyboard(loadWithName: "Register")
    }
    
    class func storyboardHome() -> UIStoryboard {
        return self.storyboard(loadWithName: "Home")
    }
    
    class func storyboardTutorial() -> UIStoryboard {
        return self.storyboard(loadWithName: "Tutorial")
    }
    
    class func storyboardCallManager() -> UIStoryboard {
        return self.storyboard(loadWithName: "CallManager")
    }
    
    class func storyboardInterpreterLocator() -> UIStoryboard {
        return self.storyboard(loadWithName: "InterpreterLocator")
    }
    
    class func storyboardInterpreterRegister() -> UIStoryboard {
        return self.storyboard(loadWithName: "InterpreterRegister")
    }
    
    class func storyboardInterpreterHome() -> UIStoryboard {
        return self.storyboard(loadWithName: "InterpreterHome")
    }
    
    class func storyboardInterpreterCallManager() -> UIStoryboard {
        return self.storyboard(loadWithName: "InterpreterCallManager")
    }

    class func storyboardAddCard() -> UIStoryboard {
        return self.storyboard(loadWithName: "AddCard")
    }

    
    // MARK: Generic Methods
    
    func loadViewController(_ identifier:ViewControllers) -> UIViewController {
        return self.instantiateViewController(withIdentifier: identifier.rawValue)
    }
    
    /**
     * Generic method to load storyboard
     */
    fileprivate static func storyboard(loadWithName name: String) -> UIStoryboard {
        return UIStoryboard(name: name, bundle: Bundle.main)
    }
    
}
