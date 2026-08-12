//
//  BruhView.swift
//  LXN
//
//  Created by Macbook on 8/8/26.
//

import UIKit

class BruhViewController: UIViewController {
    @IBOutlet weak var lblName: UILabel!
    var name : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Bruh"
        lblName.text = name
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
