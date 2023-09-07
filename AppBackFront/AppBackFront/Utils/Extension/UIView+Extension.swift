//
//  UIView+Extension.swift
//  AppBackFront
//
//  Created by Bruno Matos Silva on 05/09/23.
//

import Foundation
import UIKit

extension UIView {
    
    func roundCorners(cornerRadiuns: Double, typeCorners: CACornerMask){
        self.layer.cornerRadius = CGFloat(cornerRadiuns)
        self.clipsToBounds = true
        self.layer.maskedCorners = typeCorners
    }
}
