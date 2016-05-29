//
//  holeStatus.swift
//  Crazy Drive
//
//  Created by Dorsa Norouzi on 5/28/16.
//  Copyright © 2016 Dorsa Norouzi, Ana Costa. All rights reserved.
//

import Foundation

class holeStatus {
    var isRunning = false
    var timeGapForNextRun = UInt32(0)
    var currentInterval = UInt32(0)
    init(isRunning : Bool, timeGapForNextRun : UInt32, currentInterval : UInt32) {
        self.isRunning = isRunning
        self.timeGapForNextRun = timeGapForNextRun
        self.currentInterval = currentInterval
    }
    
    func shouldRunBlock () -> Bool {
        return self.currentInterval > self.timeGapForNextRun
    
    }
    
}