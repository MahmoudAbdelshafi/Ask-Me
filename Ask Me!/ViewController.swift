//
//  ViewController.swift
//  Ask Me!
//
//  Created by Mahmoud on 10/16/18.
//  Copyright © 2018 Mahmoud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ballImage: UIImageView!
    
   let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    var randomNumber : Int = 0
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateRandomImages()
    }

    @IBAction func askButton(_ sender: Any) {
        
        updateRandomImages()
        print (randomNumber)
    }
    
    func updateRandomImages() {
        randomNumber = Int(arc4random_uniform(5))
        
        ballImage.image = UIImage (named: ballArray[randomNumber])
        
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateRandomImages()
    }
}

