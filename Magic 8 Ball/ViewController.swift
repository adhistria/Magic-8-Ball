//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Muhammad Adhi Satria on 12/12/17.
//  Copyright © 2017 Muhammad Adhi Satria. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomBall : Int = 0
    @IBOutlet weak var ballImage: UIImageView!
    func randImage(){
        randomBall = Int(arc4random_uniform(5))+1
        ballImage.image = UIImage(named : "ball\(randomBall)")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        randImage()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        randImage()
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randImage()
    }
    
}

