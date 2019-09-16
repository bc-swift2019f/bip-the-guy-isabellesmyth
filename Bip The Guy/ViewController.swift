//
//  ViewController.swift
//  Bip The Guy
//
//  Created by Isabelle Smyth on 9/15/19.
//  Copyright © 2019 Isabelle Smyth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //mark: properties
    @IBOutlet weak var imageToPunch: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func libraryPressed(_ sender: UIButton) {
        
    }
    @IBAction func cameraPressed(_ sender: UIButton) {
    }

    //mark: functions
    
    func animateImage() {   
        let bounds = self.imageToPunch.bounds
        let shrinkValue: CGFloat = 60
        //shrink image by 60 pixels
        
        self.imageToPunch.bounds = CGRect(x: self.imageToPunch.bounds.origin.x + shrinkValue, y: self.imageToPunch.bounds.origin.y + shrinkValue, width: self.imageToPunch.bounds.size.width - shrinkValue, height: self.imageToPunch.bounds.size.height - shrinkValue)
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations: { self.imageToPunch.bounds = bounds }, completion: nil)
    }
    //mark: actions
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        print("hey you just touched the image")
        animateImage()
    }
}

