//
//  Model.swift
//  AnimationTest
//
//  Created by Александр on 28.04.2021.
//

import Foundation

struct Animation {
    let anmationValue: String
    let forceValue: Float
    let durationValue: Int
    
//    static func getValues() -> Animation {
//        Animation(anmationValue: "shake", forceValue: 2, durationValue: 2)
//        }
        
}

extension Animation {
    static func getAnimations() -> Animation {
        Animation(
            anmationValue: DataManager.shared.someAnimations.randomElement() ?? "shake",
            forceValue: Float.random(in: 0.5...3.5),
            durationValue: Int.random(in: 0...5)
        )
    }
}


