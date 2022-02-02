//
//  CellExtensions.swift
//  Visitor
//
//  Created by Владимир Киселев on 02.02.2022.
//

import UIKit

extension FirstCell: HeightResultVisitable{
    func accept(_ visitor: HeightResultVisitor) -> CGFloat {
        return visitor.visit(self)
    }
}

extension SecondCell: HeightResultVisitable{
    func accept(_ visitor: HeightResultVisitor) -> CGFloat {
        return visitor.visit(self)
    }
}

extension ThirdCell: HeightResultVisitable{
    func accept(_ visitor: HeightResultVisitor) -> CGFloat {
        return visitor.visit(self)
    }
}
