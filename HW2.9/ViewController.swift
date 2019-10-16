//
//  ViewController.swift
//  HW2.9
//
//  Created by Виктория Воробьева on 16/10/2019.
//  Copyright © 2019 Виктория Воробьева. All rights reserved.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var springView: SpringView!
    @IBOutlet var springButton: SpringButton!
    @IBOutlet var springLabel: SpringLabel!
    
    private var numberAnimationView = NumberAnimationView.first
    private var numberAnimationButton = NumberAnimationButton.first
    private var animationDescriptionView = AnimationDescriptionView.ferst
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func startAnimation() {
        causeAnimationView()
        causeAnimationButton()
        describeTheNameView()
    }
    
    private func causeAnimationView() {
        switch numberAnimationView {
        case .first:
            springView.animation = "flipY"
            springView.curve = "spring"
            springView.duration = 1.0
            springView.animate()
            numberAnimationView = .second
        case .second:
            springView.animation = "shake"
            springView.curve = "easeIn"
            springView.duration = 1.0
            springView.animate()
            numberAnimationView = .first
        }
    }
    
    private func causeAnimationButton() {
        switch numberAnimationButton {
        case .first:
            springButton.animation = "slideUp"
            springButton.curve = "easeInOutCirc"
            springButton.duration = 1.0
            springButton.animate()
            numberAnimationButton = .second
        case .second:
            springButton.animation = "zoomIn"
            springButton.curve = "easeOutQuart"
            springButton.duration = 1.0
            springButton.animate()
            numberAnimationButton = .first
        }
    }
    
    private func describeTheNameView() {
        switch animationDescriptionView {
        case .ferst:
            springLabel.text = animationDescriptionView.rawValue
            animationDescriptionView = .second
            springButton.setTitle("shake", for: .normal)
        case .second:
            springLabel.text = animationDescriptionView.rawValue
            animationDescriptionView = .ferst
            springButton.setTitle("flipY", for: .normal)
        }
    }
}

