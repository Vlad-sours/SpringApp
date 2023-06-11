//
//  ViewController.swift
//  SpringApp
//
//  Created by Vlad on 31.5.23..
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
//MARK: - IB Outlets
    
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var animationLabel: UILabel!{
        didSet{
            animationLabel.text = animation.description
        }
    }
//MARK: - Private Properties
    
    private var animation = Animation.getRandomAnimation()

//MARK: -IB Actions
    
    @IBAction func animationButtonPressed(_ sender: UIButton) {
        animationLabel.text = animation.description
        
        animationView.animation = animation.name
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.delay = animation.delay
        animationView.curve = animation.curve
        animationView.animate()
        
        sender.setTitle("Run \(animation.name)", for: .normal)
        animation = Animation.getRandomAnimation()
    }
}

