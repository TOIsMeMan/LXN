//
//  navViewController.swift
//  LXN
//
//  Created by Macbook on 31/7/26.
//

import UIKit

class navViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "nav"
        let leftButton = UIBarButtonItem(title: "right", style: .plain, target: self, action: #selector(leftAction))
        let searchItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(tap))
        navigationItem.rightBarButtonItems = [searchItem, leftButton]
        navigationController?.navigationBar.backgroundColor = .blue
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.prefersLargeTitles = false
       
                
    }
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }
    @objc func leftAction() {
            print("taped")
        }
    @objc func tap() {
    print("searchbtntapped")}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
