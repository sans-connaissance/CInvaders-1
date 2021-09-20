//
//  BasicEnemy.swift
//  CInvaders-1
//
//  Created by David Malicke on 9/18/21.
//

import SpriteKit
import GameplayKit

class BasicEnemy: GKEntity {
    

    
    init (entityManager: EntityManager ) {
        super.init()
        
        // this is where you assign a texture, perhaps from the enums below
        //the texture file name here should be in the component.
        let texture = SKTexture(imageNamed: "InvaderA_00")
        let spriteComponent = SpriteComponent(texture: texture)
        spriteComponent.node.name = "BasicEnemy"
        spriteComponent.node.size = BasicEnemyType.size
        addComponent(spriteComponent)
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
//    func makeBasicEnemy(ofType basicEnemyType: BasicEnemyType) -> SKNode {
//      let basicEnemyTextures = loadBasicEnemyTextures(ofType: basicEnemyType)
//
//      // 2
//      let basicEnemy = SKSpriteNode(texture: basicEnemyTextures[0])
//        basicEnemy.name = BasicEnemyType.name
//
////      // 3 -- this is related to animations
////        basicEnemy.run(SKAction.repeatForever(SKAction.animate(with: invaderTextures, timePerFrame: timePerMove)))
//
//      // invaders' bitmasks setup
//        basicEnemy.physicsBody = SKPhysicsBody(rectangleOf: basicEnemy.frame.size)
//        basicEnemy.physicsBody!.isDynamic = false
//    //basicEnemy.physicsBody!.categoryBitMask =
//        basicEnemy.physicsBody!.contactTestBitMask = 0x0
//        basicEnemy.physicsBody!.collisionBitMask = 0x0
//
//      return basicEnemy
//    }
    func loadBasicEnemyTextures(ofType basicEnemyType: BasicEnemyType) -> [SKTexture] {
      
      var prefix: String
      
      switch(basicEnemyType) {
      case .a:
        prefix = "InvaderA"
      case .b:
        prefix = "InvaderB"
      case .c:
        prefix = "InvaderC"
      }
      
      // 1
      return [SKTexture(imageNamed: String(format: "%@_00.png", prefix)),
              SKTexture(imageNamed: String(format: "%@_01.png", prefix))]
    }
 
    
    
    enum BasicEnemyType {
        
        case a
        case b
        case c
        
        static var size: CGSize {
            return CGSize(width: 24, height: 16)
        }
        
        static var name: String {
            return "BasicEnemy"
        }
    }
    
}
