//
//  Font.swift
//  adaptive-layout
//
//  Created by Paco on 05/02/21.
//

import UIKit

enum HelveticaNeue {
    static func regular(size: CGFloat) -> UIFont {
        UIFont(name: "HelveticaNeue", size: size.adaptedFontSize)!
    }
    
    static func bold(size: CGFloat) -> UIFont {
        UIFont(name: "HelveticaNeue-Bold", size: size.adaptedFontSize)!
    }
}
