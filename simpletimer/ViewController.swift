//
//  ViewController.swift
//  simpletimer
//
//  Created by Bing on 2/8/17.
//  Copyright © 2017 BingCheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var clock = Timer()
    var time = 0
    
    func result() {
        time += 1
        timer.text = "\(time)"
    }

    @IBOutlet var timer: UILabel!
    @IBAction func restart(_ sender: UIBarButtonItem) {
        clock.invalidate()
        time = 0
        timer.text = "0"
    }
    @IBAction func pause(_ sender: UIBarButtonItem) {
        clock.invalidate()
    }
    
    @IBAction func start(_ sender: UIBarButtonItem) {
        clock = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.result), userInfo: nil, repeats: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

