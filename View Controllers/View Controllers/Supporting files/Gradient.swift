//
//  Gradient.swift
//  IUT Mobile
//
//  Created by Zafar on 2/16/19.
//

import Foundation
import UIKit

extension UIView{
    
    func setGradientBackground(colorOne: UIColor, colorTwo: UIColor){
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.0)
        
        layer.insertSublayer(gradientLayer, at: 0)
    }
}

extension UIButton{
    func addContinuousGradient(colorOne: UIColor, colorTwo: UIColor, colorThree: UIColor, object: UIButton, isCircular: Bool){
        
        let gradient = CAGradientLayer()
        var gradientSet = [[CGColor]]()
        var currentGradient: Int = 0
        
        
        let gradientOne = colorOne.cgColor
        let gradientTwo = colorTwo.cgColor
        let gradientThree = colorThree.cgColor
        
        
        gradientSet.append([gradientOne, gradientTwo])
        gradientSet.append([gradientTwo, gradientThree])
        gradientSet.append([gradientThree, gradientOne])
        
        
        //Head
        gradient.frame = object.bounds
        gradient.colors = gradientSet[currentGradient]
        gradient.startPoint = CGPoint(x:0, y:0)
        gradient.endPoint = CGPoint(x:1, y:1)
        gradient.drawsAsynchronously = true
        
        if isCircular{
            
            let circularPath = CGMutablePath()
            circularPath.addArc(center: CGPoint.init(x: object.bounds.width / 2, y: object.bounds.height / 2), radius: object.bounds.width / 2, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true, transform: .identity)
            
            let maskLayer = CAShapeLayer()
            maskLayer.path = circularPath
            maskLayer.fillRule = CAShapeLayerFillRule.evenOdd
            //                maskLayer.fillColor = UIColor.red.cgColor
            object.layer.mask = maskLayer
        }
        
        object.layer.addSublayer(gradient)
        
        if currentGradient < gradientSet.count - 1 {
            currentGradient += 1
        } else {
            currentGradient = 0
        }
        
        let gradientChangeAnimation = CABasicAnimation(keyPath: "colors")
        gradientChangeAnimation.duration = 1.0
        gradientChangeAnimation.toValue = gradientSet[currentGradient]
        gradientChangeAnimation.fillMode = CAMediaTimingFillMode.forwards
        gradientChangeAnimation.autoreverses = true
        gradientChangeAnimation.repeatCount = .greatestFiniteMagnitude
        gradientChangeAnimation.isRemovedOnCompletion = true
        gradient.add(gradientChangeAnimation, forKey: "colorsChange")
        
        
    }
}
