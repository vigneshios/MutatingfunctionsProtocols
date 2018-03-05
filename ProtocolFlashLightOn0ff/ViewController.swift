//
//  ViewController.swift
//  ProtocolFlashLightOn0ff
//
//  Created by Apple on 05/03/18.
//  Copyright © 2018 vicky. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Outlets:
    @IBOutlet weak var onOffLabel: UILabel!
    @IBOutlet weak var onOffButton: UIButton!
    
    // Variables:
    var buttonStates: ButtonStates = .off
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func ToggleButtonPressed(_ sender: Any) {
        buttonStates.toggle()
        
        if buttonStates == .off {
            onOffButton.setImage(UIImage(named: "offBtn")!, for: .normal)
            onOffLabel.text = "🌚 OFF 🌚"
            onOffLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            view.backgroundColor = #colorLiteral(red: 0.2901960784, green: 0.2901960784, blue: 0.2901960784, alpha: 1)
        } else {
            onOffButton.setImage(UIImage(named: "onBtn")!, for: .normal)
            onOffLabel.text = "🌝 ON 🌝"
            onOffLabel.textColor = #colorLiteral(red: 0.2901960784, green: 0.2901960784, blue: 0.2901960784, alpha: 1)
            view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
        
    }
    
}

