//
//  CalculatorUIView.swift
//  CalulatorLayout_NoSB
//
//  Created by Raúl Pavón on 29/01/22.
//

import UIKit

class CalculatorUIView: UIView {
    
    enum CalculatorUIViewConstraints {
        static let fontSize: CGFloat = 30
        enum MainStack {
            static let bottom: CGFloat = -38
        }
        enum LbOperation {
            static let leading: CGFloat = 20
            static let trailing: CGFloat = -20
        }
    }
    
    private lazy var mainContainer: UIView = {
        let view = UIView(frame: CGRect.zero)
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var resultContainer: UIView = {
        let view = UIView(frame: CGRect.zero)
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let lbOperation: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: CalculatorUIViewConstraints.fontSize)
        label.textColor = .white
        label.text = GlobalConstants.Labels.zero
        label.numberOfLines = 0
        label.textAlignment = .right
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    private lazy var mainStack: UIStackView = {
        let stack = UIStackView(frame: .zero)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 1
        stack.alignment = .fill
        stack.distribution = .fillEqually
        return stack
    }()
    
    private lazy var stack1: UIStackView = {
        let stack = UIStackView(frame: .zero)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 1
        stack.alignment = .fill
        stack.distribution = .fillEqually
        return stack
    }()
    
    private lazy var stack2: UIStackView = {
        let stack = UIStackView(frame: .zero)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 1
        stack.alignment = .fill
        stack.distribution = .fillEqually
        return stack
    }()
    
    private lazy var stack3: UIStackView = {
        let stack = UIStackView(frame: .zero)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 1
        stack.alignment = .fill
        stack.distribution = .fillEqually
        return stack
    }()
    
    private lazy var stack4: UIStackView = {
        let stack = UIStackView(frame: .zero)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 1
        stack.alignment = .fill
        stack.distribution = .fillEqually
        return stack
    }()
    
    private lazy var stack5: UIStackView = {
        let stack = UIStackView(frame: .zero)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 1
        stack.alignment = .fill
        stack.distribution = .fillEqually
        return stack
    }()
    
    private lazy var stack6: UIStackView = {
        let stack = UIStackView(frame: .zero)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 1
        stack.alignment = .fill
        stack.distribution = .fillEqually
        return stack
    }()
    
    private lazy var btPorcent: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(GlobalConstants.Labels.percentage, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .darkGray
        button.titleLabel?.font = .systemFont(ofSize: CalculatorUIViewConstraints.fontSize)
        return button
    }()
    
    private lazy var btPlusMinus: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(GlobalConstants.Labels.plusMinus, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .darkGray
        button.titleLabel?.font = .systemFont(ofSize: CalculatorUIViewConstraints.fontSize)
        return button
    }()
    
    private lazy var btAc: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(GlobalConstants.Labels.ac, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .darkGray
        button.titleLabel?.font = .systemFont(ofSize: CalculatorUIViewConstraints.fontSize)
        return button
    }()
    
    private lazy var btDivide: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(GlobalConstants.Labels.divide, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(hex: GlobalConstants.Colors.orange)
        button.titleLabel?.font = .systemFont(ofSize: CalculatorUIViewConstraints.fontSize)
        return button
    }()
    
    private lazy var btSeven: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(GlobalConstants.Labels.seven, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(hex: GlobalConstants.Colors.blue)
        button.titleLabel?.font = .systemFont(ofSize: CalculatorUIViewConstraints.fontSize)
        return button
    }()
    
    private lazy var btEight: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(GlobalConstants.Labels.eight, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(hex: GlobalConstants.Colors.blue)
        button.titleLabel?.font = .systemFont(ofSize: CalculatorUIViewConstraints.fontSize)
        return button
    }()
    
    private lazy var btNine: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(GlobalConstants.Labels.nine, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(hex: GlobalConstants.Colors.blue)
        button.titleLabel?.font = .systemFont(ofSize: CalculatorUIViewConstraints.fontSize)
        return button
    }()
    
    private lazy var btMult: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(GlobalConstants.Labels.mult, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(hex: GlobalConstants.Colors.orange)
        button.titleLabel?.font = .systemFont(ofSize: CalculatorUIViewConstraints.fontSize)
        return button
    }()
    
    private lazy var btFour: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(GlobalConstants.Labels.four, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(hex: GlobalConstants.Colors.blue)
        button.titleLabel?.font = .systemFont(ofSize: CalculatorUIViewConstraints.fontSize)
        return button
    }()
    
    private lazy var btFive: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(GlobalConstants.Labels.five, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(hex: GlobalConstants.Colors.blue)
        button.titleLabel?.font = .systemFont(ofSize: CalculatorUIViewConstraints.fontSize)
        return button
    }()
    
    private lazy var btSix: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(GlobalConstants.Labels.six, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(hex: GlobalConstants.Colors.blue)
        button.titleLabel?.font = .systemFont(ofSize: CalculatorUIViewConstraints.fontSize)
        return button
    }()
    
    private lazy var btMinus: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(GlobalConstants.Labels.minus, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(hex: GlobalConstants.Colors.orange)
        button.titleLabel?.font = .systemFont(ofSize: CalculatorUIViewConstraints.fontSize)
        return button
    }()
    
    private lazy var btOne: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(GlobalConstants.Labels.one, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(hex: GlobalConstants.Colors.blue)
        button.titleLabel?.font = .systemFont(ofSize: CalculatorUIViewConstraints.fontSize)
        return button
    }()
    
    private lazy var btTwo: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(GlobalConstants.Labels.two, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(hex: GlobalConstants.Colors.blue)
        button.titleLabel?.font = .systemFont(ofSize: CalculatorUIViewConstraints.fontSize)
        return button
    }()
    
    private lazy var btThree: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(GlobalConstants.Labels.three, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(hex: GlobalConstants.Colors.blue)
        button.titleLabel?.font = .systemFont(ofSize: CalculatorUIViewConstraints.fontSize)
        return button
    }()
    
    private lazy var btPlus: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(GlobalConstants.Labels.plus, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(hex: GlobalConstants.Colors.orange)
        button.titleLabel?.font = .systemFont(ofSize: CalculatorUIViewConstraints.fontSize)
        return button
    }()
    
    private lazy var btZero: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(GlobalConstants.Labels.zero, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(hex: GlobalConstants.Colors.blue)
        button.titleLabel?.font = .systemFont(ofSize: CalculatorUIViewConstraints.fontSize)
        return button
    }()
    
    private lazy var btPoint: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(GlobalConstants.Labels.point, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(hex: GlobalConstants.Colors.blue)
        button.titleLabel?.font = .systemFont(ofSize: CalculatorUIViewConstraints.fontSize)
        return button
    }()
    
    private lazy var btEqual: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(GlobalConstants.Labels.equal, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(hex: GlobalConstants.Colors.orange)
        button.titleLabel?.font = .systemFont(ofSize: CalculatorUIViewConstraints.fontSize)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initComponents()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func initComponents() {
        addComponents()
        setAutolayout()
    }
    
    func addComponents() {
        addSubview(mainContainer)
        mainContainer.addSubview(mainStack)
        mainStack.addArrangedSubview(resultContainer)
        resultContainer.addSubview(lbOperation)
        mainStack.addArrangedSubview(stack1)
        stack1.addArrangedSubview(btPorcent)
        stack1.addArrangedSubview(btPlusMinus)
        stack1.addArrangedSubview(btAc)
        stack1.addArrangedSubview(btDivide)
        mainStack.addArrangedSubview(stack2)
        stack2.addArrangedSubview(btSeven)
        stack2.addArrangedSubview(btEight)
        stack2.addArrangedSubview(btNine)
        stack2.addArrangedSubview(btMult)
        mainStack.addArrangedSubview(stack3)
        stack3.addArrangedSubview(btFour)
        stack3.addArrangedSubview(btFive)
        stack3.addArrangedSubview(btSix)
        stack3.addArrangedSubview(btMinus)
        mainStack.addArrangedSubview(stack4)
        stack4.addArrangedSubview(btOne)
        stack4.addArrangedSubview(btTwo)
        stack4.addArrangedSubview(btThree)
        stack4.addArrangedSubview(btPlus)
        mainStack.addArrangedSubview(stack5)
        stack5.addArrangedSubview(btZero)
        stack5.addArrangedSubview(stack6)
        stack6.addArrangedSubview(btPoint)
        stack6.addArrangedSubview(btEqual)
    }
    
    func setAutolayout() {
        NSLayoutConstraint.activate([
            mainStack.topAnchor.constraint(equalTo: topAnchor),
            mainStack.leadingAnchor.constraint(equalTo: leadingAnchor),
            mainStack.trailingAnchor.constraint(equalTo: trailingAnchor),
            mainStack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: CalculatorUIViewConstraints.MainStack.bottom),
            
            lbOperation.topAnchor.constraint(equalTo: resultContainer.topAnchor),
            lbOperation.leadingAnchor.constraint(equalTo: resultContainer.leadingAnchor, constant: CalculatorUIViewConstraints.LbOperation.leading),
            lbOperation.trailingAnchor.constraint(equalTo: resultContainer.trailingAnchor, constant: CalculatorUIViewConstraints.LbOperation.trailing),
            lbOperation.bottomAnchor.constraint(equalTo: resultContainer.bottomAnchor),
            
            
        ])
    }
}
