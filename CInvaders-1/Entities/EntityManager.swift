//
//  EntityManager.swift
//  CInvaders-1
//
//  Created by David Malicke on 9/18/21.
//

import Foundation
import GameplayKit
import SpriteKit

class EntityManager {
    
    var entities = Set<GKEntity>()
    let scene: SKScene
    
    lazy var componentSystems: [GKComponentSystem] = {
        let basicEnemyMoveSystem = GKComponentSystem(componentClass: BasicEnemyMoveComponent.self)

        return [basicEnemyMoveSystem]
    }()
    
    init(scene: SKScene) {
        self.scene = scene
    }
    
    func add(_ entity: GKEntity) {
        entities.insert(entity)
        
        if let spriteNode = entity.component(ofType: SpriteComponent.self)?.node {
            scene.addChild(spriteNode)
            
            for componentSystem in componentSystems {
                componentSystem.addComponent(foundIn: entity)
            }
        }
    }
    
    
    func spawnBasicEnemy() {
        let basicEnemy = BasicEnemy(entityManager: self)
        if let spriteComponent = basicEnemy.component(ofType: SpriteComponent.self) {
            spriteComponent.node.position = CGPoint(x: 0.0, y: 0.0)
            spriteComponent.node.zPosition = 1
        }
        add(basicEnemy)
        
    }
    
    
}
