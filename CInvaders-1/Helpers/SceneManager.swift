//
//  SceneManagerX.swift
//  StartMenuTest-3
//
//  Created by David Malicke on 9/2/21.
//

import Foundation
import SpriteKit


extension SKScene {
    
    
    
    enum SceneType {
        case MainMenuScene, LevelOneScene
    }
    
    func transition(_ fromScene: SKScene, toScene: SceneType, transition: SKTransition? = nil ) {
        
        guard let scene = getScene(toScene) else { return }
        
        if let transition = transition {
            scene.scaleMode = .aspectFill
            fromScene.view?.presentScene(scene, transition: transition)
        } else {
            scene.scaleMode = .aspectFill
            fromScene.view?.presentScene(scene)
        }
        
    }
    
    func getScene(_ sceneType: SceneType) -> SKScene? {
        switch sceneType {
        case SceneType.MainMenuScene:
            return MainMenuScene(fileNamed: "MainMenuScene")
        case SceneType.LevelOneScene:
            return MainMenuScene(fileNamed: "LevelOneScene")
        }
    }
}
