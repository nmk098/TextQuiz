//
//  ViewController.swift
//  TextQuiz
//
//  Created by Никита Курюмов on 12.12.22.
//

import UIKit

var name: [String] = ["default"]

class MainScreenController: UIViewController, UITextFieldDelegate {
    
    var delegate: UITextFieldDelegate?
    
    
    
    private lazy var goButton: UIButton = {
        let button = UIButton()
        button.setTitle("Go!", for: .normal)
        button.backgroundColor = .systemGray3
        button.addTarget(self, action: #selector(goButtonTap), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    private lazy var saveButton: UIButton = {
        let button = UIButton()
        button.setTitle("Save", for: .normal)
        button.backgroundColor = .systemGray4
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(saveButtonTap), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private var nameTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .bezel
        textField.layer.cornerRadius = textField.frame.height / 2
        textField.clearButtonMode = .whileEditing
        
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Start your jorney!"
        view.addSubview(goButton)
        view.addSubview(nameTextField)
        view.addSubview(saveButton)
        view.backgroundColor = .darkGray
        nameTextField.placeholder = "Enter your name"
        nameTextField.backgroundColor = .systemGray4
        
        
        NSLayoutConstraint.activate([
            goButton.topAnchor.constraint(equalTo: view.centerYAnchor, constant: 80),
            goButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -80),
            goButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 80)
        ])
        
        NSLayoutConstraint.activate([
            nameTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            nameTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 60),
            nameTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -60)
            
        ])
        
        NSLayoutConstraint.activate([
            saveButton.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 40),
            saveButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 160),
            saveButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -160)
        ])
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        goButton.layer.cornerRadius = goButton.frame.height / 2
        saveButton.layer.cornerRadius = saveButton.frame.height / 2
    }
    
    @objc
    private func goButtonTap() {
        let firstScreenViewController = FirstScreenViewController()
        navigationController?.pushViewController(firstScreenViewController, animated: true)
    }

    @objc
    private func saveButtonTap() {
        guard let newName = nameTextField.text else { return }
        name.removeLast()
        name.append(newName)
        print(name)
    }
}
        
    



