//
//  Assembly+Foundation.swift
//  Pokemon Weakness
//
//  Created by Oscar Duran on 17/7/16.
//  Copyright © 2016 Skydev. All rights reserved.
//

import UIKit

extension Assembly {
    
    func getApplication() -> UIApplication {
        return UIApplication.sharedApplication()
    }
    
    func getApplicationWindow() -> UIWindow? {
        
        let frame = getMainScreen().bounds
        
        return UIWindow(
            frame: frame
        )
    }
    
    func getMainScreen() -> UIScreen {
        return UIScreen.mainScreen()
    }
    
    func getBundle() -> NSBundle {
        return NSBundle.mainBundle()
    }
    
    func getNumberFormatter() -> NSNumberFormatter {
        return NSNumberFormatter()
    }
}