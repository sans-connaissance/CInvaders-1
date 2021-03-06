//
//  GameScene.swift
//  CInvaders-1
//
//  Created by David Malicke on 9/18/21.
//

import SpriteKit
import GameplayKit

class MainMenuScene: SKScene {
    

    var gamePlayButton: SKLabelNode!

    
    override func didMove(to view: SKView) {
        gamePlayButton = (self.childNode(withName: "gamePlayButton") as! SKLabelNode)

        
    }
    
    
    func touchDown(atPoint pos : CGPoint) {

    }
    
    func touchMoved(toPoint pos : CGPoint) {

    }
    
    func touchUp(atPoint pos : CGPoint) {

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

        actionOnFirst(touches, withName: "gamePlayButton") {
            transition(self, toScene: .LevelOneScene, transition: SKTransition.fade(withDuration: 1))
        }
        
        
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
