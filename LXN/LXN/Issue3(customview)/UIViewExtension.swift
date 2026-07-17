//
//  UIViewExtension.swift
//  LXN
//
//  Created by Macbook on 17/7/26.
//

import Foundation
import UIKit

extension UIView {
    func loadNibFromView(nibName : String) -> UIView? {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName:nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
        
    }
}
