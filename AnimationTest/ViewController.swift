//
//  ViewController.swift
//  AnimationTest
//
//  Created by Александр on 27.04.2021.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var animationSpringView: SpringView!
    @IBOutlet weak var animationInfoLabel: UILabel!
    @IBOutlet weak var buttonInfo: SpringButton!
    
    var animation = Animation.getAnimations()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateButtonName(value: animation)
    }
    
    @IBAction func SpringButtonPressed(_ sender: SpringButton) {
        startAnimation(value: animation)
        updatingLabel(value: animation)
        
        animationSpringView.animate()
        
        animation = Animation.getAnimations()
        updateButtonName(value: animation)
    }
    
    private func startAnimation(value: Animation) {
        animationSpringView.animation = value.anmationValue
        animationSpringView.force = CGFloat(value.forceValue)
        animationSpringView.duration = CGFloat(value.durationValue)
    }
    
    private func updatingLabel(value: Animation) {
        animationInfoLabel.text = "IT WAS\nAnimation: \(value.anmationValue)\nForce: \(value.forceValue)\nDuration: \(value.durationValue)"
    }
    
    private func updateButtonName(value: Animation) {
        buttonInfo.setTitle("next animation: \(value.anmationValue)", for: .normal)
    }
    
}

