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
    private var shapeName: String
    init(shapeName: String){
        self.shapeName = shapeName
        super.init(texture: <#T##SKTexture?#>)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
}
