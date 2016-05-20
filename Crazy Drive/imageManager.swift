//
//  imageManager.swift
//  Crazy Drive
//
//  Created by Dorsa Norouzi on 5/4/16.
//  Copyright © 2016 Dorsa Norouzi, Ana Costa. All rights reserved.
//

import Foundation
import UIKit

class imageManager{
   
    class func squareImage() -> UIImage {
        let size: CGSize = CGSize(width: 15, height: 13)
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        
        //// Color Declarations
        let color = UIColor(red: 0.086, green: 0.652, blue: 0.078, alpha: 1.000)
        
        //// square Drawing
        let squarePath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: 15, height: 13))
        color.setFill()
        squarePath.fill()
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        //clear
        UIGraphicsEndImageContext()
        return image
        
    }
    
    class func polygonImage() -> UIImage {
        let size: CGSize = CGSize(width: 24, height: 23)
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        
        //// Color Declarations
       let color8 = UIColor(red: 0.086, green: 0.652, blue: 0.078, alpha: 1.000)
        
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()
        
        //// Polygon Drawing
        CGContextSaveGState(context)
        CGContextTranslateCTM(context, 24, 22.5)
        CGContextRotateCTM(context, -180 * CGFloat(M_PI) / 180)
        
        let polygonPath = UIBezierPath()
        polygonPath.moveToPoint(CGPointMake(12, 0))
        polygonPath.addLineToPoint(CGPointMake(23.41, 7.95))
        polygonPath.addLineToPoint(CGPointMake(19.05, 20.8))
        polygonPath.addLineToPoint(CGPointMake(4.95, 20.8))
        polygonPath.addLineToPoint(CGPointMake(0.59, 7.95))
        polygonPath.closePath()
        color8.setFill()
        polygonPath.fill()
        
        CGContextRestoreGState(context)
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        //clear
        UIGraphicsEndImageContext()
        return image
        
    }
    
    class func triangleImage() -> UIImage {
        let size: CGSize = CGSize(width: 23, height: 23)
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        
        
        //// Color Declarations
        let color9 = UIColor(red: 0.086, green: 0.652, blue: 0.078, alpha: 1.000)
        

        //// triangle Drawing
        let trianglePath = UIBezierPath()
        trianglePath.moveToPoint(CGPointMake(22.5, 0.5))
        trianglePath.addLineToPoint(CGPointMake(11.5, 23.5))
        trianglePath.addLineToPoint(CGPointMake(0.5, 0.5))
        trianglePath.addLineToPoint(CGPointMake(22.5, 0.5))
        trianglePath.addLineToPoint(CGPointMake(22.5, 0.5))
        trianglePath.closePath()
        color9.setFill()
        trianglePath.fill()
        color9.setStroke()
        trianglePath.lineWidth = 1
        trianglePath.stroke()

        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        //clear
        UIGraphicsEndImageContext()
        return image
        
    }

    
    
    class func ditriangleImage() -> UIImage {
        let size: CGSize = CGSize(width: 21, height: 23)
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        
        
        //// Color Declarations
        let color10 = UIColor(red: 0.086, green: 0.652, blue: 0.078, alpha: 1.000)
        
        

        //// ditriangle Drawing
        let ditrianglePath = UIBezierPath()
        ditrianglePath.moveToPoint(CGPointMake(20.5, 0.5))
        ditrianglePath.addLineToPoint(CGPointMake(14.5, 23.5))
        ditrianglePath.addLineToPoint(CGPointMake(8.5, 5.5))
        ditrianglePath.addLineToPoint(CGPointMake(1.5, 14.5))
        ditrianglePath.addLineToPoint(CGPointMake(1.5, 0.5))
        ditrianglePath.addLineToPoint(CGPointMake(20.5, 0.5))
        ditrianglePath.closePath()
        color10.setFill()
        ditrianglePath.fill()
        color10.setStroke()
        ditrianglePath.lineWidth = 1
        ditrianglePath.stroke()
        
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        //clear
        UIGraphicsEndImageContext()
        return image
        
    }
    
    
    class func backgroundImage() -> UIImage {
        let size: CGSize = CGSize(width: 240, height: 120)
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        
        //// Color Declarations
        let color = UIColor(red: 0.049, green: 0.845, blue: 0.934, alpha: 1.000)
        let color2 = UIColor(red: 0.086, green: 0.652, blue: 0.078, alpha: 1.000)
        
        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(rect: CGRectMake(0, 0, 240, 120))
        color.setFill()
        rectanglePath.fill()
        
        
        //// Rectangle 2 Drawing
        let rectangle2Path = UIBezierPath(rect: CGRectMake(0, 95, 240, 30))
        color2.setFill()
        rectangle2Path.fill()
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        //clear
        UIGraphicsEndImageContext()
        return image
        
    }
    
    class func truckImage() -> UIImage {
        let size: CGSize = CGSize(width: 92, height: 57)
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        
        //// Color Declarations
        let color4 = UIColor(red: 0.969, green: 0.078, blue: 0.149, alpha: 1.000)
        let color5 = UIColor(red: 1.000, green: 0.986, blue: 0.986, alpha: 1.000)
        
        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(rect: CGRectMake(0, 20, 92, 25))
        UIColor.redColor().setFill()
        rectanglePath.fill()
        
        
        //// Oval Drawing
        let ovalPath = UIBezierPath(ovalInRect: CGRectMake(11, 39, 19, 18))
        UIColor.blackColor().setFill()
        ovalPath.fill()
        
        
        //// Oval 2 Drawing
        let oval2Path = UIBezierPath(ovalInRect: CGRectMake(60, 39, 19, 18))
        UIColor.blackColor().setFill()
        oval2Path.fill()
        
        
        //// Oval 3 Drawing
        let oval3Path = UIBezierPath(ovalInRect: CGRectMake(16, 42, 9, 11))
        UIColor.grayColor().setFill()
        oval3Path.fill()
        
        
        //// Oval 4 Drawing
        let oval4Path = UIBezierPath(ovalInRect: CGRectMake(65, 42, 9, 11))
        UIColor.grayColor().setFill()
        oval4Path.fill()
        
        
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.moveToPoint(CGPointMake(77.5, 20.5))
        bezierPath.addLineToPoint(CGPointMake(71.5, -0.5))
        bezierPath.addLineToPoint(CGPointMake(45.5, -0.5))
        bezierPath.addLineToPoint(CGPointMake(45.5, 20.5))
        bezierPath.addLineToPoint(CGPointMake(77.5, 20.5))
        bezierPath.closePath()
        UIColor.redColor().setFill()
        bezierPath.fill()
        color4.setStroke()
        bezierPath.lineWidth = 1
        bezierPath.stroke()
        
        
        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.moveToPoint(CGPointMake(73.5, 19.5))
        bezier2Path.addLineToPoint(CGPointMake(64.5, 4.5))
        bezier2Path.addLineToPoint(CGPointMake(52.5, 4.5))
        bezier2Path.addLineToPoint(CGPointMake(52.5, 19.5))
        bezier2Path.addLineToPoint(CGPointMake(73.5, 19.5))
        bezier2Path.closePath()
        color5.setFill()
        bezier2Path.fill()
        UIColor.blackColor().setStroke()
        bezier2Path.lineWidth = 1
        bezier2Path.stroke()

        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        //clear
        UIGraphicsEndImageContext()
        return image
        
    }
    
    
    class func blueSquareImage() -> UIImage {
        let size: CGSize = CGSize(width: 15, height: 13)
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        
        //// Color Declarations
        let color = UIColor(red: 0.049, green: 0.845, blue: 0.934, alpha: 1.000)
        //// square Drawing
        let squarePath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: 15, height: 13))
        color.setFill()
        squarePath.fill()
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        //clear
        UIGraphicsEndImageContext()
        return image
        
    }
    
    class func bluePolygonImage() -> UIImage {
        let size: CGSize = CGSize(width: 24, height: 23)
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        
        //// Color Declarations
        let color8 = UIColor(red: 0.049, green: 0.845, blue: 0.934, alpha: 1.000)
        
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()
        
        //// Polygon Drawing
        CGContextSaveGState(context)
        CGContextTranslateCTM(context, 24, 22.5)
        CGContextRotateCTM(context, -180 * CGFloat(M_PI) / 180)
        
        let polygonPath = UIBezierPath()
        polygonPath.moveToPoint(CGPointMake(12, 0))
        polygonPath.addLineToPoint(CGPointMake(23.41, 7.95))
        polygonPath.addLineToPoint(CGPointMake(19.05, 20.8))
        polygonPath.addLineToPoint(CGPointMake(4.95, 20.8))
        polygonPath.addLineToPoint(CGPointMake(0.59, 7.95))
        polygonPath.closePath()
        color8.setFill()
        polygonPath.fill()
        
        CGContextRestoreGState(context)
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        //clear
        UIGraphicsEndImageContext()
        return image
        
    }
    
    class func blueTriangleImage() -> UIImage {
        let size: CGSize = CGSize(width: 23, height: 23)
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        
        
        //// Color Declarations
        let color9 = UIColor(red: 0.049, green: 0.845, blue: 0.934, alpha: 1.000)
        
        
        //// triangle Drawing
        let trianglePath = UIBezierPath()
        trianglePath.moveToPoint(CGPointMake(22.5, 0.5))
        trianglePath.addLineToPoint(CGPointMake(11.5, 23.5))
        trianglePath.addLineToPoint(CGPointMake(0.5, 0.5))
        trianglePath.addLineToPoint(CGPointMake(22.5, 0.5))
        trianglePath.addLineToPoint(CGPointMake(22.5, 0.5))
        trianglePath.closePath()
        color9.setFill()
        trianglePath.fill()
        color9.setStroke()
        trianglePath.lineWidth = 1
        trianglePath.stroke()
        
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        //clear
        UIGraphicsEndImageContext()
        return image
        
    }
    
    
    
    class func blueDitriangleImage() -> UIImage {
        let size: CGSize = CGSize(width: 21, height: 23)
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        
        
        //// Color Declarations
        let color10 = UIColor(red: 0.049, green: 0.845, blue: 0.934, alpha: 1.000)
        
        
        
        //// ditriangle Drawing
        let ditrianglePath = UIBezierPath()
        ditrianglePath.moveToPoint(CGPointMake(20.5, 0.5))
        ditrianglePath.addLineToPoint(CGPointMake(14.5, 23.5))
        ditrianglePath.addLineToPoint(CGPointMake(8.5, 5.5))
        ditrianglePath.addLineToPoint(CGPointMake(1.5, 14.5))
        ditrianglePath.addLineToPoint(CGPointMake(1.5, 0.5))
        ditrianglePath.addLineToPoint(CGPointMake(20.5, 0.5))
        ditrianglePath.closePath()
        color10.setFill()
        ditrianglePath.fill()
        color10.setStroke()
        ditrianglePath.lineWidth = 1
        ditrianglePath.stroke()
        
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        //clear
        UIGraphicsEndImageContext()
        return image
        
    }
    





    
}

