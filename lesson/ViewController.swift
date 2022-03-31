//
//  ViewController.swift
//  lesson
//
//  Created by Seyran Saakyan on 29.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var startLabel: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeCorners(sender: redView)
        makeCorners(sender: yellowView)
        makeCorners(sender: greenView)
        startLabel.layer.cornerRadius = 20
        redView.backgroundColor = UIColor(red: 1.00, green: 0.23, blue: 0.19, alpha: 0.3)
        yellowView.backgroundColor = UIColor(red: 1.00, green: 0.80, blue: 0.20, alpha: 0.30)
        greenView.backgroundColor = UIColor(red: 0.20, green: 1.00, blue: 0.35, alpha: 0.30)
    }
    
    @IBAction func startButton(_ sender: Any) {
        if startLabel.currentTitle == "START"{
            greenView.backgroundColor = UIColor(red: 0.20, green: 1.00, blue: 0.35, alpha: 0.30)
            redView.backgroundColor = UIColor(red: 1.00, green: 0.23, blue: 0.19, alpha: 1.00)
            startLabel.setTitle("NEXT", for: .normal)
        } else if startLabel.currentTitle == "NEXT"{
            if yellowView.backgroundColor == UIColor(red: 1.00, green: 0.80, blue: 0.20, alpha: 0.30){
                redView.backgroundColor = UIColor(red: 1.00, green: 0.23, blue: 0.19, alpha: 0.3)
                yellowView.backgroundColor = UIColor(red: 1.00, green: 0.80, blue: 0.20, alpha: 1)
            } else {
                yellowView.backgroundColor = UIColor(red: 1.00, green: 0.80, blue: 0.20, alpha: 0.30)
                greenView.backgroundColor = UIColor(red: 0.20, green: 1.00, blue: 0.35, alpha: 1)
                startLabel.setTitle("START", for: .normal)
            }
        }
        
    }
    func makeCorners(sender: UIView){
        sender.layer.cornerRadius = 60
        
    }

}
