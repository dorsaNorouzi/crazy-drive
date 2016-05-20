//
//  holes.swift
//  Crazy Drive
//
//  Created by Dorsa Norouzi on 5/13/16.
//  Copyright © 2016 Dorsa Norouzi, Ana Costa. All rights reserved.
//

import Foundation
import SpriteKit

class Holes: SKSpriteNode {
    private var holeName: String
    init(holeName: String){
        self.holeName = holeName
        let Image = imageManager.blueSquareImage() //do your setup here to make a UIImage
        let Texture = SKTexture(image: Image)
        
        super.init(texture: Texture, color: UIColor.blackColor(), size: Image.size)
        self.xScale = 4
        self.yScale = 4
        //truck should be 2
        //background should be 5
        //shapes can be 4
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
