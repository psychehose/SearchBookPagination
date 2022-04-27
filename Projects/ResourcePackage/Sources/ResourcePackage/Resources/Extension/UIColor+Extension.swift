//
//  File.swift
//  
//
//  Created by KIM HOSE on 2022/04/27.
//

import Foundation
import UIKit

public extension UIColor {
    static func dynamicColor(light: UIColor, dark: UIColor) -> UIColor {
        guard #available(iOS 13.0, *) else { return light }
        return UIColor { $0.userInterfaceStyle == .dark ? dark : light }
    }
}
