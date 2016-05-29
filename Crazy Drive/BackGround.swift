//
//  BackGround.swift
//  Crazy Drive
//
//  Created by Dorsa Norouzi on 5/13/16.
//  Copyright © 2016 Dorsa Norouzi, Ana Costa. All rights reserved.
//

import Foundation
import SpriteKit

class BackGround: SKSpriteNode {
    internal var type: Int
    init(type: Int) {
        self.type = type
        var image = UIImage?() //do your setup here to make a UIImage
        switch type {
        case 1:
            image = imageManager.backgroundImage()
        default:
            image = imageManager.backgroundImage()
        }
        
        let Texture = SKTexture(image: image!)
        
        super.init(texture: Texture, color: UIColor.blackColor(), size: image!.size)
        self.xScale = 5
        self.yScale = 5
        //truck should be 2
        //background should be 5
        //shapes can be 4
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
}