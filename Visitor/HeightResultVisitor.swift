//
//  HeightResultVisiter\.swift
//  Visitor
//
//  Created by Владимир Киселев on 02.02.2022.
//
import UIKit

// We doesnt know what inside cell
struct HeightResultVisitor{
    func visit(_ cell: FirstCell) -> CGFloat {return 10.0}
    func visit(_ cell: SecondCell) -> CGFloat {return 20.0}
    func visit(_ cell: ThirdCell) -> CGFloat {return 30.0}
}
