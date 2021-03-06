//
//  GameScene.swift
//  SushiMatch
//
//  Created by mitchell hudson on 2/11/16.
//  Copyright © 2016 mitchell hudson. All rights reserved.
//

import UIKit
import SpriteKit

class GameScene: SKScene {
    
    var popButton: SKLabelNode!
    
    func showPopup() {
        let popup = AlertPopup(title: "Alert!", message: "Hello World", size: frame.size)
        
        popup.zPosition = 999
        addChild(popup)
        
    }
    
    
    func setupPopButton() {
        popButton = SKLabelNode(text: "Pop!")
        popButton.fontName = "8-BIT WONDER" // TODO: Fix font
        popButton.position.x = popButton.frame.width / 2 + 20
        popButton.position.y = view!.frame.height - (popButton.frame.height / 2) - 40
        addChild(popButton)
    }
    
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        guard let touch = touches.first else {
            // no touches
            return
        }
        
        let location = touch.locationInNode(self)
        if popButton.containsPoint(location) {
            showPopup()
        }
        
    }
    
    
    override func didMoveToView(view: SKView) {
        super.didMoveToView(view)
        
        view.backgroundColor = UIColor.redColor()
        setupPopButton()
    }
    
}
