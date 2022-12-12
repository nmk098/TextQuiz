//
//  ViewController.swift
//  TextQuiz
//
//  Created by Никита Курюмов on 12.12.22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var delegate: UITextFieldDelegate?
    
    private lazy var goButton: UIButton = {
        let button = UIButton()
        button.setTitle("Go!", for: .normal)
        button.backgroundColor = .systemGray4
        button.addTarget(self, action: #selector(goButtonTap), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    private var textField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .bezel
        textField.layer.cornerRadius = textField.frame.height / 2
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Start your jorney!"
        view.addSubview(goButton)
        view.addSubview(textField)
        view.backgroundColor = .darkGray
        textField.placeholder = "Введите свое имя!"
        textField.backgroundColor = .systemGray2
        
        
        NSLayoutConstraint.activate([
            goButton.topAnchor.constraint(equalTo: view.centerYAnchor, constant: 80),
            goButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -80),
            goButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 80)
        ])
        
        NSLayoutConstraint.activate([
            textField.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            textField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 60),
            textField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -60)
            
        ])
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        goButton.layer.cornerRadius = goButton.frame.height / 2
    }
        
        @objc
    private func goButtonTap() {
        let firstScreenViewController = FirstScreenViewController()
        navigationController?.pushViewController(firstScreenViewController, animated: true)
    }
    }


