//
//  ViewController.swift
//  issue2
//
//  Created by Macbook on 4/7/26.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var condotrencondo: UIView!
    
    @IBOutlet weak var tuannguyenbeo: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        tuannguyenbeo.isUserInteractionEnabled = true
        // Do any additional setup after loading the view.
       
        }
    override func touchesBegan(_ touches : Set<UITouch>, with event: UIEvent?) {
        
        if let touch = touches.first {
            if touch.view == condotrencondo {
                
                
                print("purple:", touch.location(in: condotrencondo)) }
            else {
                print("white:",touch.location(in: view)) }
        }
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if let touch = touches.first {
            if touch.view == tuannguyenbeo {
                let location = touch.location(in: view)
                tuannguyenbeo.center = location
                
            }
        }
    }


}

