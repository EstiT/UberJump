//
//  GameObjectNode.swift
//  UberJump
//
//  Created by Esti Tweg on 2019-01-18.
//  Copyright © 2019 Esti Tweg. All rights reserved.
//
//  Followed Ray Wenderlich tutorial in Objective-C by Toby Stephens
//  https://www.raywenderlich.com/2467-how-to-make-a-game-like-mega-jump-with-sprite-kit-part-2-2

import Foundation
import SpriteKit

class GameObjectNode: SKNode {
    
    // Called when a player physics body collides with the game object's physics body
    func collisionWithPlayer(player: SKNode) -> Bool{
        return false;
    }
    
    // Called every frame to see if the game object should be removed from the scene
    func checkNodeRemoval(playerY: CGFloat){
        if playerY > self.position.y + 300.0 {
            removeFromParent();
        }
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        print("Collision")
    }
    
}
