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
    var background: BackGround?
    var holeMaxX = CGFloat(0)
    var groundSpped = 5
    var origHolePositionX = CGFloat(0)
    
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        //shape!.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
        //self.addChild(shape!)
        
        let bg1 = BackGround(type: 1)
        bg1.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
        self.addChild(bg1)
        
        self.view?.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(detectPan)))
        
        //green stuff
        
        let shape1 = Shape(type: 1, shapeC: UIColor(red: 0.049, green: 0.845, blue: 0.934, alpha: 1.000))
        shape1.position = CGPointMake(CGRectGetMaxX(self.frame) - 100, CGRectGetMaxY(self.frame) - 150)
        self.addChild(shape1)
        
        
        let shape2 = Shape(type: 2, shapeC: UIColor(red: 0.049, green: 0.845, blue: 0.934, alpha: 1.000))
        shape2.position = CGPointMake(CGRectGetMaxX(self.frame) - 100, CGRectGetMaxY(self.frame) - 250)
        self.addChild(shape2)
        
        
        let shape3 = Shape(type: 3, shapeC: UIColor.greenColor())
        shape3.position = CGPointMake(CGRectGetMaxX(self.frame) - 100, CGRectGetMaxY(self.frame) - 350)
        self.addChild(shape3)
        
        let shape4 = Shape(type: 4, shapeC: UIColor(red: 0.049, green: 0.845, blue: 0.934, alpha: 1.000))
        shape4.position = CGPointMake(CGRectGetMaxX(self.frame) - 100, CGRectGetMaxY(self.frame) - 450)
        self.addChild(shape4)
        
        // blue stuff
        
        let hole1 = Holes(type: 1,holesC: UIColor(red: 0.049, green: 0.845, blue: 0.934, alpha: 1.000))
        hole1.position = CGPointMake(CGRectGetMidX(self.frame) - 100, 185)
        self.addChild(hole1)
        hole1.name = "hole1"
        
        let hole2 = Holes(type: 2,holesC: UIColor(red: 0.049, green: 0.845, blue: 0.934, alpha: 1.000))
        hole1.position = CGPointMake(CGRectGetMidX(self.frame) - 100, 185)
        self.addChild(hole2)
        hole2.name = "hole2"
        
        let hole3 = Holes(type: 3,holesC: UIColor(red: 0.049, green: 0.845, blue: 0.934, alpha: 1.000))
        hole1.position = CGPointMake(CGRectGetMidX(self.frame) - 100, 185)
        self.addChild(hole3)
        hole3.name = "hole3"
        
        let hole4 = Holes(type: 4,holesC: UIColor(red: 0.049, green: 0.845, blue: 0.934, alpha: 1.000))
        hole1.position = CGPointMake(CGRectGetMidX(self.frame) - 100, 185)
        self.addChild(hole4)
        hole4.name = "hole4"
        
        
        holeStatuses["hole1"] = holeStatus(isRunning: false, timeGapForNextRun: random(), currentInterval: UInt32(0))
        holeStatuses["hole2"] = holeStatus(isRunning: false, timeGapForNextRun: random(), currentInterval: UInt32(0))
        holeStatuses["hole3"] = holeStatus(isRunning: false, timeGapForNextRun: random(), currentInterval: UInt32(0))
        holeStatuses["hole4"] = holeStatus(isRunning: false, timeGapForNextRun: random(), currentInterval: UInt32(0))
        
        self.holeMaxX = 0 - hole1.size.width / 2
        self.origHolePositionX = hole1.position.x
        
        
    }
    
    func random () -> UInt32 {
        let loweRange : UInt32 = 50
        let higherRange : UInt32 = 100
        let randomm = arc4random_uniform(higherRange - loweRange) + loweRange
        return randomm
    }
    
    var holeStatuses : Dictionary<String, holeStatus> = [:]
    
    
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
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
        holeRunner()
    }
    
    func holeRunner() {
        for(hole, holeStatus) in self.holeStatuses {
            let thisHole = self.childNodeWithName(hole)
            if holeStatus.shouldRunBlock() {
                holeStatus.timeGapForNextRun = random()
                holeStatus.currentInterval = 0
                holeStatus.isRunning = true
            }
            
            if holeStatus.isRunning {
                if thisHole?.position.x > holeMaxX {
                    thisHole?.position.x -= CGFloat(self.groundSpped)
                    
                }else {
                    thisHole?.position.x = self.origHolePositionX
                    holeStatus.isRunning = false
                    
                    
                }
                
            }else {
                holeStatus.currentInterval = holeStatus.currentInterval + 1
                
            }
        }  
    }
}







