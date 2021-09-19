//
//  MoveComponent.swift
//  CInvaders-1
//
//  Created by David Malicke on 9/18/21.
//

import SpriteKit
import GameplayKit


class BasicEnemyMoveComponent: GKAgent2D, GKAgentDelegate {
   
    let entityManager: EntityManager
    
    init(maxSpeed: Float, radius: Float, entityManager: EntityManager) {
        self.entityManager = entityManager
        super.init()
        delegate = self
        self.maxSpeed = maxSpeed
        self.radius = radius
        self.mass = 0.01
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
}
