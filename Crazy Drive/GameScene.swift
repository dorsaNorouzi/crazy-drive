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
    var interval = 0
    var help = SKSpriteNode()

    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        //help sign
        help = SKSpriteNode(texture: SKTexture(image: imageManager.imageForHelpSymbol()))
        help.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
        help.name = "help"
        self.addChild(help)
        
        //background
        let bg1 = BackGround(type: 1)
        bg1.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
        self.addChild(bg1)
        
        //truck
        let truck = Truck(type: 1)
        truck.position = CGPointMake(truck.size.width, truck.size.height + 150)
        self.addChild(truck)
        
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
        let hole1 = Holes(type: randomShape(),holesC: UIColor(red: 0.049, green: 0.845, blue: 0.934, alpha: 1.000))
        hole1.position = CGPointMake(CGRectGetMaxX(self.frame) + hole1.size.width , 185)
        self.addChild(hole1)
        hole1.name = "hole1"
        
    }
    
    //makes a random type for the shapes
    func randomShape() -> Int {
        let lower : UInt32 = 1
        let higher : UInt32 = 4
        let randommm = Int (arc4random_uniform(higher - lower) + lower)
        return randommm
    }
    
    //makes a random number for the interval between holes
    func random () -> UInt32 {
        let loweRange : UInt32 = 50
        let higherRange : UInt32 = 100
        let randomm = arc4random_uniform(higherRange - loweRange) + loweRange
        return randomm
    }

    //drag and drop
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
        
        let touch = touches.first
        let touchLocation = touch!.locationInNode(self)
        let nodes = self.nodesAtPoint(touchLocation)
        _ = false
        for node in nodes {
            if node.name == "help" {
                let scene = HelpScreen()
                let skView = self.view!
                skView.ignoresSiblingOrder = true
                scene.scaleMode = .ResizeFill
                scene.size = (size: skView.bounds.size)
                skView.presentScene(scene)
            }
        }
        
        for touch in touches {
            _ = touch.locationInNode(self)
        }
    }
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
        
        var intervalToNextGap = random()
        interval = interval - 1
        
        if intervalToNextGap == 0 {
            let hole1 = Holes(type: randomShape(),holesC: UIColor(red: 0.049, green: 0.845, blue: 0.934, alpha: 1.000))
            hole1.position = CGPointMake(CGRectGetMaxX(self.frame) + hole1.size.width , 185)
            self.addChild(hole1)
            hole1.name = "hole1"
            intervalToNextGap = random()
            
        }else {
            intervalToNextGap = intervalToNextGap - 1
        }
        
        self.enumerateChildNodesWithName("hole1") {
            node, stop in
            if node.position.x < 0 {
                node.removeFromParent()
            }else {
                node.position.x = node.position.x - 5
            }
        }
    }    
}







