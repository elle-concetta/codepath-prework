//
//  ViewController.swift
//  codepath-prework
//
//  Created by Elle Fassler on 12/22/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func alertButton(_ sender: Any) {
        let alert = UIAlertController(title: "Welcome", message: "Introductory iOS Mobile Application!", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "This closes alert"), style: .default, handler: { _ in NSLog("The \"OK\" alert occured.")
                }))
                self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
                view.backgroundColor = randomColor
            }
            
            func changeColor() -> UIColor{
                
                let red = CGFloat.random(in: 0...1)
                let green = CGFloat.random(in: 0...1)
                let blue = CGFloat.random(in: 0...1)
                
                return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
    
    @IBAction func switchControl(_ sender: UISwitch) {
        print("Switch is now \(sender.isOn ? "ON" : "OFF")")
    }
    
}

