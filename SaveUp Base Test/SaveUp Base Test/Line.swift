//
//  Line.swift
//  SaveUp Base Test
//
//  Created by alex heidarian on 8/12/18.
//  Copyright © 2018 alex heidarian. All rights reserved.
//

import UIKit


class Line: UIView {
    
    var line = UIBezierPath();
    
    
    func graph() {
        line.move(to: .init(x: 0, y: bounds.height/2))
        line.addLine(to: .init(x: bounds.width, y: bounds.height/2))
        UIColor.black.setStroke()
        line.lineWidth = 2;
        line.stroke();
    }
    
    override func draw(_ rect: CGRect) {
        graph();
    }
}
