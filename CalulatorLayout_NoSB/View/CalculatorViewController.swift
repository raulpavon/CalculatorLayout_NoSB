//
//  CalculatorViewController.swift
//  CalulatorLayout_NoSB
//
//  Created by Raúl Pavón on 29/01/22.
//

import UIKit

class CalculatorViewController: UIViewController {
    weak var calculatorCoordinator: CalculatorCoordinator?
    private let factory: CalculatorFactory
    
    private lazy var calculatorUIView: CalculatorUIView = {
        let view = CalculatorUIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    required init(factory: CalculatorFactory, calculatorCoordinator: CalculatorCoordinator) {
        self.factory = factory
        self.calculatorCoordinator = calculatorCoordinator
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
        initComponents()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func initComponents() {
        addComponents()
        setAutolayout()
    }
    
    private func addComponents() {
        view.addSubview(calculatorUIView)
    }
    
    private func setAutolayout() {
        NSLayoutConstraint.activate([
            calculatorUIView.topAnchor.constraint(equalTo: view.topAnchor),
            calculatorUIView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            calculatorUIView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            calculatorUIView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}
