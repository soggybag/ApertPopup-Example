//
//  AlertPopup.swift
//  SushiMatch
//
//  Created by mitchell hudson on 2/27/16.
//  Copyright © 2016 mitchell hudson. All rights reserved.
//

import UIKit
import SpriteKit

class AlertPopup: SKSpriteNode {
    let background: SKSpriteNode!
    let box: RoundedRectangle!
    let titleLabel: SKLabelNode!
    let messageLabel: SKLabelNode!
    
    let boxSize = CGSize(width: 200, height: 200)
    
    init(title: String?, message: String?, size: CGSize) {
        background = SKSpriteNode(texture: nil, color: UIColor(white: 0, alpha: 0.75), size: size)
        box = RoundedRectangle(size: boxSize, radius: 20)
        titleLabel = SKLabelNode(text: title)
        messageLabel = SKLabelNode(text: message)
        
        background.position.x = size.width / 2
        background.position.y = size.height / 2
        box.position.x = size.width / 2
        box.position.y = size.height / 2
        
        titleLabel.position.y = 50
        
        titleLabel.fontColor = UIColor.blackColor()
        messageLabel.fontColor = UIColor.blackColor()
        messageLabel.fontSize = 18
        
        super.init(texture: nil, color: UIColor.clearColor(), size: size)
        
        addChild(background)
        addChild(box)
        box.addChild(titleLabel)
        box.addChild(messageLabel)
        
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
