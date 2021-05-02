//
//  DataManager.swift
//  AnimationTest
//
//  Created by Александр on 28.04.2021.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    var someAnimations = [
        "fall",
        "flipY",
        "fadeInUp",
        "morph",
        "pop",
        "shake",
        "slideLeft",
        "squeezeUp",
        "swing",
        "wobble",
    ]
    
    private init() {}

}
