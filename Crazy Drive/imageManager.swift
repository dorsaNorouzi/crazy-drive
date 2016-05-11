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
        let color = UIColor(red: 0.371, green: 0.651, blue: 0.306, alpha: 1.000)
        
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
        
        //// (?)Color Declarations
        _ = UIColor(red: 0.371, green: 0.651, blue: 0.306, alpha: 1.000)
        
        
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
        UIColor.grayColor().setFill()
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
        
        
        //// (?)Color Declarations
        _ = UIColor(red: 0.371, green: 0.651, blue: 0.306, alpha: 1.000)
        

        //// triangle Drawing
        let trianglePath = UIBezierPath()
        trianglePath.moveToPoint(CGPointMake(22.5, 0.5))
        trianglePath.addLineToPoint(CGPointMake(11.5, 23.5))
        trianglePath.addLineToPoint(CGPointMake(0.5, 0.5))
        trianglePath.addLineToPoint(CGPointMake(22.5, 0.5))
        trianglePath.addLineToPoint(CGPointMake(22.5, 0.5))
        trianglePath.closePath()
        UIColor.grayColor().setFill()
        trianglePath.fill()
        UIColor.blackColor().setStroke()
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
        
        
        //// (?)Color Declarations
        _ = UIColor(red: 0.371, green: 0.651, blue: 0.306, alpha: 1.000)
        

        //// ditriangle Drawing
        let ditrianglePath = UIBezierPath()
        ditrianglePath.moveToPoint(CGPointMake(20.5, 0.5))
        ditrianglePath.addLineToPoint(CGPointMake(14.5, 23.5))
        ditrianglePath.addLineToPoint(CGPointMake(8.5, 5.5))
        ditrianglePath.addLineToPoint(CGPointMake(1.5, 14.5))
        ditrianglePath.addLineToPoint(CGPointMake(1.5, 0.5))
        ditrianglePath.addLineToPoint(CGPointMake(20.5, 0.5))
        ditrianglePath.closePath()
        UIColor.grayColor().setFill()
        ditrianglePath.fill()
        UIColor.blackColor().setStroke()
        ditrianglePath.lineWidth = 1
        ditrianglePath.stroke()
        
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        //clear
        UIGraphicsEndImageContext()
        return image
        
    }


    
}

