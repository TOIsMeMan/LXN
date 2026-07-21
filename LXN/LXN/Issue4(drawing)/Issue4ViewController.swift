//
//  Issue4ViewController.swift
//  LXN
//
//  Created by Macbook on 21/7/26.
//

import UIKit

class Issue4ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        drawing(start: CGPoint(x: 0, y: 0), end:CGPoint(x: 500, y: 1000))
        // Do any additional setup after loading the view.
    }
    func drawing(start:CGPoint, end: CGPoint) {
        let path = UIBezierPath()
        path.move(to: start)
        path.addLine(to: end)
        path.close()
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.strokeColor = UIColor.red.cgColor
        shapeLayer.lineWidth = 1.0
        shapeLayer.path = path.cgPath
        self.view.layer.addSublayer(shapeLayer)
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
