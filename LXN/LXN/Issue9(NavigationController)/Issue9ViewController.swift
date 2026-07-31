//
//  Issue9ViewController.swift
//  LXN
//
//  Created by Macbook on 31/7/26.
//

import UIKit

class Issue9ViewController: UIViewController {
    @IBAction func btnNav(_ sender: Any) {
        
        let vc = navViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func btnPresent(_ sender: Any) {
        let rootVC = presentViewController()
        let nav = UINavigationController(rootViewController: rootVC)
        nav.modalPresentationStyle = .fullScreen
        present(nav, animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
