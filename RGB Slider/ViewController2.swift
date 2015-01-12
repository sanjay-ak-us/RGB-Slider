//
//  ViewController2.swift
//  RGB Slider
//
//  Created by Sanjay on 1/12/15.
//  Copyright (c) 2015 sanjay. All rights reserved.
//

import UIKit;

class ViewController2 : UIViewController {
    
    override func viewDidLoad() {
        
    }
    
    override func didReceiveMemoryWarning() {
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "openThird") {
            let newViewController2 =  segue.destinationViewController as UIViewController;
            newViewController2.view.backgroundColor = self.view.backgroundColor;
        }
        
    }
}