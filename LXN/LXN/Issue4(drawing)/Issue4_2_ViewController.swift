//
//  Issue4_2_ViewController.swift
//  LXN
//
//  Created by Macbook on 21/7/26.
//

import Foundation
import UIKit

class Issue4_2_ViewController: UIView {
    @IBOutlet weak var contentView : UIView!
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadviewfromNib()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadviewfromNib()
    }
    private func loadviewfromNib() {
        Bundle.main.loadNibNamed("Issue4_2_ViewController", owner:self, options: nil)
        contentView.frame = self.bounds
        //addSubview(contentView)
    }
    func drawLine(start: CGPoint, end: CGPoint) {
        let path = UIBezierPath()
        path.move(to:start)
        path.addLine(to:end)
        path.close()
        let shapelayer = CAShapeLayer()
        shapelayer.strokeColor = UIColor.red.cgColor
        shapelayer.path = path.cgPath
        shapelayer.lineWidth = 1.0
        
        layer.addSublayer(shapelayer)
    }
    override func draw(_ rect: CGRect) {
        let path = createPath()
        let fillColor = UIColor.red
        fillColor.setFill()
        path.fill()
    }
    func createPath() -> UIBezierPath {
        return UIBezierPath(rect: self.bounds)
    }
}

