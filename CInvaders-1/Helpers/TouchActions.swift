//
//  TouchActions.swift
//  StartMenuTest-3
//
//  Created by David Malicke on 9/3/21.
//

import Foundation
import SpriteKit

extension SKScene {
    
    
    //Actions with single or first touch
    func actionOnFirst(_ touches: Set<UITouch>, withName name: String, action: () -> Void ) {
        let touch = touches.first
        
        
        if let location = touch?.location(in: self) {
            let nodesArray = self.nodes(at: location)
            
            if nodesArray.first?.name == name {
                action()
            }
        }
    }
    
    
    
    
}
