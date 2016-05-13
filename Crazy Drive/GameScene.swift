//
//  GameScene.swift
//  Crazy Drive
//
//  Created by Dorsa Norouzi on 5/4/16.
//  Copyright (c) 2016 Dorsa Norouzi, Ana Costa. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    var lastLocation:CGPoint = CGPointMake(0, 0)
    var shape: Shape?
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        shape = Shape(shapeName: "Square")
        shape!.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
        self.addChild(shape!)
        
        
        
    }
    
    
    func detectPan(recognizer:UIPanGestureRecognizer) {
        let translation  = recognizer.translationInView(self.view!)
        shape!.position = CGPointMake(lastLocation.x + translation.x, lastLocation.y + translation.y)
        print(3)
    }
    

    

    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        //Shape(shapeName: "Square")
        
        // Remember original location
        lastLocation = shape!.position
        //selectNodeForTouch(positionInScene)
        
        for touch in touches {
            _ = touch.locationInNode(self)
            
            
        }
        }
    }
   
    func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }


    
    

    
