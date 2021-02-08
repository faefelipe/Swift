//
//  CGFloatExtension.swift
//  adaptive-layout
//
//  Created by Paco on 06/02/21.
//
import UIKit

extension CGFloat {
    var adaptedFontSize: CGFloat {
        adapted(dimensionSize: self, to: dimension)
    }
}
