//
//  UIViewExtension.swift
//  Task1
//
//  Created by Evgeniy on 13.12.2019.
//  Copyright © 2019 Evgeniy. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func setGradientBackground(colorOne: UIColor, colorTwo: UIColor) {
        
        //TODO: - Create if statement for sublayer (if it's already iserted then delete and insert a new one)
        
        let gradientLayer = CAGradientLayer()

        gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 0.0)

        layer.insertSublayer(gradientLayer, at: 0)
    }
}
