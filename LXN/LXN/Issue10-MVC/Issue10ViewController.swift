//
//  Issue10ViewController.swift
//  LXN
//
//  Created by Macbook on 3/8/26.
//

import UIKit

class Issue10ViewController: UIViewController {

    
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var bTxt: UITextField!
    @IBOutlet weak var aTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func plusBtnTapped(_ sender: Any) {
        let a = Int(aTxt.text ?? "0") ?? 0
        let b = Int(bTxt.text ?? "0") ?? 0
        resultLbl.text = "\(Calculator.plus(a, b))"
    }
    
    @IBAction func minusBtnTapped(_ sender: Any) {
        let a = Int(aTxt.text ?? "0") ?? 0
        let b = Int(bTxt.text ?? "0") ?? 0
        resultLbl.text = "\(Calculator.minus(a, b))"
    }
    @IBAction func multiBtnTapped(_ sender: Any) {
        let a = Int(aTxt.text ?? "0") ?? 0
        let b = Int(bTxt.text ?? "0") ?? 0
        resultLbl.text = "\(Calculator.multiply(a, b))"
    }
    @IBAction func divBtnTapped(_ sender: Any) {
        let a = Int(aTxt.text ?? "0") ?? 0
        let b = Int(bTxt.text ?? "0") ?? 0
        resultLbl.text = "\(Calculator.divide(a, b))"
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
