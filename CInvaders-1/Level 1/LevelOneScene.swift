//
//  LevelOneScene.swift
//  CInvaders-1
//
//  Created by David Malicke on 9/18/21.
//


import SpriteKit
import GameplayKit

class LevelOneScene: SKScene {
    
    var entityManager: EntityManager!
    
    override func didMove(to view: SKView) {
        

        
        entityManager = EntityManager(scene: self)
        
        //add a "position" parameter to the spawnBasicEnemy function
        entityManager.spawnBasicEnemy(count: 5)
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
}
