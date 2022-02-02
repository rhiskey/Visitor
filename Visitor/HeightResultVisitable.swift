//
//  HeightResultVisitable.swift
//  Visitor
//
//  Created by Владимир Киселев on 02.02.2022.
//

import UIKit

protocol HeightResultVisitable{
    func accept(_ visitor: HeightResultVisitor) -> CGFloat
}
