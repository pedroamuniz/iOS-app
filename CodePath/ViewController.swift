//
//  ViewController.swift
//  CodePath
//
//  Created by Pedro Muniz on 7/27/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var schoolLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        func genColor() -> (UIColor , UIColor) {
            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)
            return (UIColor(red: red, green: green, blue: blue, alpha: 0.5) , UIColor(red: 1-red, green: 1-green, blue: 1-blue, alpha: 0.5))
            
        }
        
        let (randomColor, oppositeColor) = genColor()
        view.backgroundColor = randomColor
        
        nameLabel.backgroundColor = oppositeColor
        schoolLabel.textColor = oppositeColor
        jobLabel.shadowColor = oppositeColor
    }
    

    }

