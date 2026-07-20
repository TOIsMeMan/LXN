//
//  Issue3ViewController.swift
//  LXN
//
//  Created by Macbook on 16/7/26.
//

import UIKit

class Issue3ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let customUI = CustomUI();
        if let viewFromNib = customUI.loadNibFromView(nibName: "CustomUI") as? CustomUI {
            viewFromNib.delegate = self
            view.addSubview(viewFromNib) }
        // Do any additional setup after loading the view.
    }
    


    }
extension Issue3ViewController : CustomUIDelegate {
    func didTap(view: CustomUI, count: Int) {
        print("tapped")
    }
}
