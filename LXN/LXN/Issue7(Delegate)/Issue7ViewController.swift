//
//  Issue7ViewController.swift
//  LXN
//
//  Created by Macbook on 27/7/26.
//

import UIKit

class Issue7ViewController: UIViewController {
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let subView = Issue7SubViewController(frame: .zero)
        subView.delegate = self
        subView.center = view.center
        view.addSubview(subView)
        // Do any additional setup after loading the view.
    }
    
    }
extension Issue7ViewController: Issue7SubviewDelegate {
    func didTapButton(_ sender: UIButton) {
        print("did tap")
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
