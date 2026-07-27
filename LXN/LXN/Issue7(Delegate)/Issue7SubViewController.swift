//
//  Issue7SubViewController.swift
//  LXN
//
//  Created by Macbook on 27/7/26.
//

import UIKit

protocol Issue7SubviewDelegate: AnyObject {
    func didTapButton(_ sender: UIButton)
}

class Issue7SubViewController: UIView {
    /// Sub-View pattern
    @IBOutlet weak var contentView : UIView!
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadViewFromNib()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadViewFromNib()
    }
    private func loadViewFromNib() {
        Bundle.main.loadNibNamed("Issue7SubViewController", owner: self, options: nil)
        frame.size = contentView.frame.size
        contentView.frame = bounds
        addSubview(contentView)
    }
    /// delegate pattern
   
    weak var delegate : Issue7SubviewDelegate?
    
    @IBAction func btn1tapped(_ sender: UIButton) {
        delegate?.didTapButton(sender)
    }
        
    }
   
    
  
