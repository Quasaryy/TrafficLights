//
//  ViewController.swift
//  TrafficLights
//
//  Created by Yury on 28.12.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redView.layer.cornerRadius = 10
        greenView.layer.cornerRadius = 10
        yellowView.layer.cornerRadius = 10
        startButton.layer.cornerRadius = 5
        redView.alpha = 1.0
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        
    }

    @IBAction func startButtonAction() {
        if redView.alpha == 1.0 {
            redView.alpha = 0.3
            yellowView.alpha = 1.0
            startButton.setTitle("Next", for: .normal)
        } else if yellowView.alpha == 1.0 {
            yellowView.alpha = 0.3
            greenView.alpha = 1.0
        } else if greenView.alpha == 1.0 {
            greenView.alpha = 0.3
            redView.alpha = 1.0
        }
    }
    
}

