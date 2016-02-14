//
//  File.swift
//  PingMeUp
//
//  Created by Isaac Albets Ramonet on 13/02/16.
//  Copyright © 2016 shippo. All rights reserved.
//

import UIKit

class QuickTour: UIViewController, UIGestureRecognizerDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    var imageList:[String] = ["image1.jpg", "image2.jpg", "image3.jpg"]
    var imageIndex: NSInteger = 0
    let maxImages = 3

    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        var swipeLeft = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
        swipeLeft.direction = UISwipeGestureRecognizerDirection.Left
        self.view.addGestureRecognizer(swipeLeft)
        
    }
    
    
    
    func swiped(gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.Right :
                
                // decrease index first
                imageIndex--
                
                // check if index is in range
                
                if imageIndex < 0 {
                    
                    imageIndex = maxImages
                    
                }
                
                imageView.image = UIImage(named: imageList[imageIndex])
                
            case UISwipeGestureRecognizerDirection.Left:
                
                // increase index first
                imageIndex++
                
                // check if index is in range
                
                if imageIndex > maxImages {
                    
                    imageIndex = 0
                    
                }
                
                imageView.image = UIImage(named: imageList[imageIndex])
                
                
            default:
                break //stops the code/codes nothing.
            }
        }
    }
    
}






