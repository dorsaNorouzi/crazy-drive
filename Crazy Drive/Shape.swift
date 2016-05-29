//
//  Shape.swift
//  Crazy Drive
//
//  Created by Dorsa Norouzi on 5/4/16.
//  Copyright © 2016 Dorsa Norouzi, Ana Costa. All rights reserved.
//

import Foundation
import SpriteKit

class Shape: SKSpriteNode {
    //change
    internal var type: Int
    internal var shapeColor: UIColor
    init(type: Int, shapeC: UIColor) {
        self.type = type
        self.shapeColor = shapeC
        let image: UIImage?//do your setup here to make a UIImage
        
        switch type{
        case 1:
            image = imageManager.squareImage() //do your setup here to make a UIImage
        case 2:
            image = imageManager.polygonImage() //do your setup here to make a UIImage
        case 3:
            image = imageManager.triangleImage() //do your setup here to make a UIImage
        case 4:
            image = imageManager.ditriangleImage()
        default:
            image = imageManager.ditriangleImage() //do your setup here to make a UIImage
        }
        
        let Texture = SKTexture(image: image!)
        
        super.init(texture: Texture, color: UIColor.blackColor(), size: image!.size)
        
        self.xScale = 3
        self.yScale = 3
        
        if type == 1 {
            self.xScale = 4
            self.yScale = 4
        }
        

        
        //truck should be 2
        //background should be 5
        //shapes can be 4
        
        
    }

    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
