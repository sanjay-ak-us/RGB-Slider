//
//  ViewController.swift
//  RGB Slider
//
//  Created by Sanjay on 1/6/15.
//  Copyright (c) 2015 sanjay. All rights reserved.
//

import UIKit
//comment
class ViewController: UIViewController {

    
    @IBOutlet weak var redSlider: UISlider!;
    @IBOutlet weak var greenSlider: UISlider!;
    @IBOutlet weak var blueSlider: UISlider!;
    @IBOutlet weak var colorSquare: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let defaults = NSUserDefaults.standardUserDefaults();
        redSlider.value = defaults.floatForKey("red");
        greenSlider.value = defaults.floatForKey("green");
        blueSlider.value = defaults.floatForKey("blue");
        colorSquare.layer.borderColor = UIColor.blackColor().CGColor;
        colorSquare.layer.borderWidth = 1;
        updateBackground();
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
            if (segue.identifier == "openColor"){
                let newViewController =  segue.destinationViewController as UIViewController;
                newViewController.view.backgroundColor = colorSquare.backgroundColor;
            }
            if (segue.identifier == "openThird") {
                let newViewController2 =  segue.destinationViewController as UIViewController;
                newViewController2.view.backgroundColor = colorSquare.backgroundColor;
            }
    }

    @IBAction func updateBackground() {
        colorSquare.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(1));
        let defaults = NSUserDefaults.standardUserDefaults();
        defaults.setFloat(redSlider.value, forKey:"red");
        defaults.setFloat(greenSlider.value, forKey: "green");
        defaults.setFloat(blueSlider.value, forKey: "blue");
    }
}

