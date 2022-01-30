//
//  CalculatorCoordinator.swift
//  CalulatorLayout_NoSB
//
//  Created by Raúl Pavón on 29/01/22.
//

import Foundation
import UIKit

class CalculatorCoordinator {
    var navigationController: UINavigationController
    private let factory =  CalculatorFactoryImp()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let calculatorViewController = factory.makeCalculatorViewController(calculatorCoordinator: self)
        navigationController.setViewControllers([calculatorViewController], animated: false)
    }
}
