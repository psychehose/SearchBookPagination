//
//  File.swift
//  
//
//  Created by KIM HOSE on 2022/04/27.
//

import Foundation
import UIKit

struct RImage: _ExpressibleByImageLiteral {
    let image: UIImage
    
    init(imageLiteralResourceName path: String) {
        if let image = UIImage(named: path, in: .module, compatibleWith: nil) {
            self.image = image
        } else {
            assert(false, "해당 이미지가 없습니다.")
            self.image = UIImage()
        }
    }
}
