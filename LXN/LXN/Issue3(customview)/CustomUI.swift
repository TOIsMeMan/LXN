import UIKit

protocol CustomUIDelegate {
    func didTap(view: CustomUI, count: Int)
}
class CustomUI: UIView {
    var count = 0
    var delegate:CustomUIDelegate?
    @IBOutlet weak var btn1: UIButton!
    
    @IBOutlet weak var lbl1: UILabel!
    @IBAction func btn1Tapped(_ sender: UIButton) {
        count+=1
        
        lbl1.text = "\(count)"
        
        if let delegate = delegate {
            delegate.didTap(view: self, count: count)
        }
        
    }
    
}
