//
//  UIViewExtension.swift
//  adaptive-layout
//
//  Created by Paco on 06/02/21.
//

import UIKit

extension UIView {
    func updateAdaptedConstraints() {
        let adaptedConstraints = constraints.filter { (constraint) -> Bool in
            return constraint is AdaptedConstraint
        } as! [AdaptedConstraint]
        
        for constraint in adaptedConstraints {
            constraint.resetConstant()
            constraint.awakeFromNib()
        }
    }
}
