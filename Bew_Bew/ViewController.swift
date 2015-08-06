//
//  ViewController.swift
//  Bew_Bew
//
//  Created by Jordan Riser on 8/3/15.
//  Copyright (c) 2015 Jordan Riser. All rights reserved.
//

import UIKit
import AVFoundation
import UIColor_Hex_Swift

class ViewController: UIViewController {
    
    override func viewWillAppear(animated: Bool) {
        view.backgroundColor = UIColor.colorWithCSS("#3498DB")
    }

    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var hornSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("AIRHORN", ofType: "mp3")!)
        
        AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback, error: nil)
        AVAudioSession.sharedInstance().setActive(true, error: nil)
        
        var error:NSError?
        audioPlayer = AVAudioPlayer(contentsOfURL: hornSound, error: &error)
        audioPlayer.prepareToPlay()
    }
    
    @IBOutlet weak var button: UIButton!
    
    @IBAction func buttonClicked(sender: AnyObject) {//Touch Down action
        println("Pressed")
        audioPlayer.currentTime = 0
        audioPlayer.play()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

