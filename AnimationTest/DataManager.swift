//
//  DataManager.swift
//  AnimationTest
//
//  Created by Александр on 28.04.2021.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    var animationsValues = [
        "morph", "shake", "slideLeft", "swing",
        "pop"
    ]
    
    let forceValues = [
        2, 1, 0.5, 2.3, 1.5, 3
    ]
    
    let durationValues = [
        1, 2, 3, 4, 0, 5
    ]
    
    private init() {}

}
