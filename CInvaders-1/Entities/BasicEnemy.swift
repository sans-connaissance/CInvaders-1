//
//  BasicEnemy.swift
//  CInvaders-1
//
//  Created by David Malicke on 9/18/21.
//

import SpriteKit
import GameplayKit

class BasicEnemy: GKEntity {
    
    init (entityManager: EntityManager) {
        super.init()
        let texture = SKTexture(imageNamed: "InvaderA_00")
        let spriteComponent = SpriteComponent(texture: texture)
        addComponent(spriteComponent)
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
