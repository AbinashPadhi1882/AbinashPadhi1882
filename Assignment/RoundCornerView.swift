//
//  RoundCornerView.swift
//  Assignment
//
//  Created by Abinash Padhi on 18/09/21.
//

import UIKit

class RoundCornerView: UIView {
    
    let shape: CAShapeLayer = CAShapeLayer()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.makeCornersRound()
        
    }
    
    func makeCornersRound() {
        let maskPath = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: .allCorners , cornerRadii:CGSize(width: 3.0, height: 3.0))
        
        shape.frame = self.bounds
        shape.path = maskPath.cgPath
        self.layer.mask = shape
    }

}
