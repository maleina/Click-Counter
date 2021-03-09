//
//  ViewController.swift
//  Click Counter
//
//  Created by Maleina Bidek on 3/9/21.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Create label
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        
        // Create increment button
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 250, width: 60, height: 60)
        button.setTitle("+", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
        
        // Create increment button
        let buttonDecr = UIButton()
        buttonDecr.frame = CGRect(x: 150, y: 350, width: 60, height: 60)
        buttonDecr.setTitle("-", for: .normal)
        buttonDecr.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(buttonDecr)
        
        buttonDecr.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControl.Event.touchUpInside)
    }

    @objc func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
        if self.count % 2 == 0 {
            view.backgroundColor = UIColor.white
        } else {
            view.backgroundColor = UIColor.yellow
        }
    }
    
    @objc func decrementCount() {
        self.count -= 1
        self.label.text = "\(self.count)"
        if self.count % 2 == 0 {
            view.backgroundColor = UIColor.white
        } else {
            view.backgroundColor = UIColor.yellow
        }
    }

}

