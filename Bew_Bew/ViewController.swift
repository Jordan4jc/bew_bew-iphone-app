//
//  ViewController.swift
//  Bew_Bew
//
//  Created by Jordan Riser on 8/3/15.
//  Copyright (c) 2015 Jordan Riser. All rights reserved.
//

import UIKit
import AudioToolbox
import UIColor_Hex_Swift

class ViewController: UIViewController {
    
    var horn: SystemSoundID = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var hornSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("AIRHORN", ofType: "mp3")!)
        
        AudioServicesCreateSystemSoundID(hornSound!, &self.horn)
    }
    
    @IBOutlet weak var button: UIButton!
    
    @IBAction func buttonClicked(sender: AnyObject) {//Touch Down action
        AudioServicesPlaySystemSound(self.horn)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

