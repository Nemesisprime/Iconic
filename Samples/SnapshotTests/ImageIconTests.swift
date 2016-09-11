//
//  ImageIconTests.swift
//  Samples
//
//  Created by Ignacio Romero on 9/10/16.
//  Copyright © 2016 DZN. All rights reserved.
//

import FBSnapshotTestCase
import Iconic

class ImageIconTests: FBSnapshotTestCase {
    
    override func setUp() {
        super.setUp()
        
        self.recordMode = false
    }
    
    func testImageDefaultColor() {
        
        let image = Iconic.image(forIcon: Icon.Save, size: 60, color: nil)
        let imageView = UIImageView(image: image)
        
        self.verifyView(imageView, withIdentifier: "")
    }
    
    func testImagePatternColor() {
        
        let bundle = NSBundle(forClass: self.dynamicType)
        let pattern = UIImage(named: "pattern", inBundle: bundle, compatibleWithTraitCollection: nil)
        let color = UIColor(patternImage: pattern!)
        
        let image = Iconic.image(forIcon: Icon.WarningSign, size: 60, color: color)
        let imageView = UIImageView(image: image)
        
        self.verifyView(imageView, withIdentifier: "")
    }
    
    func testImageSizes() {
        
        let sizes = [16, 32, 64, 128, 512]
        
        for size in sizes {
            
            let image = Iconic.image(forIcon: Icon.GithubAlt, size: CGFloat(size), color: UIColor.redColor())
            let imageView = UIImageView(image: image)
            
            self.verifyView(imageView, withIdentifier: "\(size)_icon")
        }
    }
    
    func testImageEdgeInsets() {
        // TODO: Make image(idx:size:color:edgeInsets:) public
    }
}