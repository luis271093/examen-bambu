//
//  UIViewController.swift
//  Pruebabambu
//
//  Created by luis hector hernandez godinez  on 14/09/22.
//

import Foundation
import UIKit

var vSpinner : UIView?
extension UIViewController {
    func showSpinner(onView : UIView) {
        let spinnerView = UIView.init(frame: onView.bounds)
        spinnerView.backgroundColor = UIColor.init(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)
        let ai = UIActivityIndicatorView.init(style: .large)
        ai.startAnimating()
        ai.center = spinnerView.center

        DispatchQueue.main.async {
            spinnerView.addSubview(ai)
            onView.addSubview(spinnerView)
        }

        vSpinner = spinnerView
    }

    func removeSpinner() {
        DispatchQueue.main.async {
            vSpinner?.removeFromSuperview()
            vSpinner = nil
        }
    }
}

@IBDesignable
class DesignableSegmentControl: UISegmentedControl{
}
extension UISegmentedControl{
    @IBInspectable
    var textColor: UIColor{
        get {
            return self.textColor
        }
        set {
            let unselectedAttributes = [NSAttributedString.Key.foregroundColor: newValue,
                                        NSAttributedString.Key.font:  UIFont.systemFont(ofSize: 13, weight: UIFont.Weight.regular)]
            self.setTitleTextAttributes(unselectedAttributes, for: .normal)
            self.setTitleTextAttributes(unselectedAttributes, for: .selected)
        }
    }
}
