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
    
    
    func spawnBasicEnemy(count: Int) {
        var xSpacerArray = [Double]()
        let xMultiplier = 50.0
        var xSpacer = 0.0
        
        for num in 0..<count {
            xSpacer = xMultiplier * Double(num)
            xSpacerArray.append(xSpacer)
        }
        print(xSpacerArray)
        
        for spacer in xSpacerArray {
            let basicEnemy = BasicEnemy(entityManager: self)
            if let spriteComponent = basicEnemy.component(ofType: SpriteComponent.self) {
                spriteComponent.node.position = CGPoint(x: -100.0 + spacer, y: 0.0)
                spriteComponent.node.zPosition = 1
            }
            add(basicEnemy)
        }
    }
}
