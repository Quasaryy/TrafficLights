//
//  ViewController.swift
//  TrafficLights
//
//  Created by Yury on 28.12.22.
//

import UIKit

enum LightSwitcher {
    case red
    case yellow
    case green
}

class ViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var startButton: UIButton!
    
    var currentLight = LightSwitcher.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redView.layer.cornerRadius = redView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        startButton.layer.cornerRadius = 10
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        
    }
    
    @IBAction func startButtonAction() {
        switch currentLight {
        case .red:
            currentLight = LightSwitcher.yellow
            redView.alpha = 1.0
            greenView.alpha = 0.3
            startButton.setTitle("Next", for: .normal)
        case .yellow:
            currentLight = LightSwitcher.green
            redView.alpha = 0.3
            yellowView.alpha = 1.0
        case .green:
            currentLight = LightSwitcher.red
            yellowView.alpha = 0.3
            greenView.alpha = 1.0
        }
    }
}

