//
//  Model.swift
//  AnimationTest
//
//  Created by Александр on 28.04.2021.
//

import Foundation

struct Animation {
    let anmationValue: String
    let forceValue: Double
    let durationValue: Int
    
    static func getValues() -> Animation {
        Animation(anmationValue: "shake", forceValue: 2, durationValue: 2)
        }
        
    }

extension Animation {
    static func getAnimations() -> [Animation] {
        var animations: [Animation] = []
        
        let animationsValues = DataManager.shared.animationsValues.shuffled()
        let forceValues = DataManager.shared.forceValues.shuffled()
        let durationValues = DataManager.shared.durationValues.shuffled()
        
        let iterationCount = min(animationsValues.count, forceValues.count, durationValues.count)
        
        for index in 0..<iterationCount {
            let animation = Animation(
                anmationValue: animationsValues[index],
                forceValue: forceValues[index],
                durationValue: durationValues[index]
            )
            animations.append(animation)
        }
        return animations
    }
}

