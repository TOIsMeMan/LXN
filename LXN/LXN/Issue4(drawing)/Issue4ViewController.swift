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
//        let lineView = Issue4_2_ViewController(frame: view.bounds)
//        lineView.drawLine(start:CGPoint(x:1,y:1), end: CGPoint(x:1000,y:1000))
//        view.addSubview(lineView)
        let rectview = Issue4_2_ViewController(frame: CGRect(x: 50, y: 50, width: 10, height: 10))
        view.addSubview(rectview)
        
        
        // Do any additional setup after loading the view.
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
