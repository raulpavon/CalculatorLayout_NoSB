//
//  CalculatorFactory.swift
//  CalulatorLayout_NoSB
//
//  Created by Raúl Pavón on 29/01/22.
//

import Foundation

protocol CalculatorFactory {
    func makeCalculatorViewController(calculatorCoordinator: CalculatorCoordinator) -> CalculatorViewController
}

class CalculatorFactoryImp: CalculatorFactory {
    func makeCalculatorViewController(calculatorCoordinator: CalculatorCoordinator) -> CalculatorViewController {
        let calculatorViewController = CalculatorViewController(factory: self, calculatorCoordinator: calculatorCoordinator)
        return calculatorViewController
    }
}
