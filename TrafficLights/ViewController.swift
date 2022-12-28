//
//  ViewController.swift
//  TrafficLights
//
//  Created by Yury on 28.12.22.
//

import UIKit

class ViewController: UIViewController {
    
    enum LightSwitcher {
        case red
        case yellow
        case green
    }
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var startButton: UIButton!
    
    var currentLight = LightSwitcher.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redView.layer.cornerRadius = 10
        greenView.layer.cornerRadius = 10
        yellowView.layer.cornerRadius = 10
        startButton.layer.cornerRadius = 5
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

