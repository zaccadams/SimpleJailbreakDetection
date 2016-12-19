//
//  ViewController.swift
//  JailbreakDetectionSwift
//
//  Created by Zac Adams on 19/12/16.
//  Copyright © 2016 LAWZ Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var truLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
        if isJailbroken() {
            print("Is JAILED")
            self.truLabel.text = "This device is Jailbroken"
        } else {
            print("Not JAILED")
            self.truLabel.text = "This device is not Jailbroken"
        }
    }
    
    func isJailbroken() -> Bool {
        guard let urlScheme = NSURL(string: "cydia://home"), UIApplication.shared.canOpenURL(urlScheme as URL) else {
            return false
        }
        return true
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

