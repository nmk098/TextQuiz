//
//  FirstScreenViewController.swift
//  TextQuiz
//
//  Created by Никита Курюмов on 12.12.22.
//

import UIKit

class FirstScreenViewController: UIViewController {
    
    private lazy var forwardButton: UIButton = {
        let button = UIButton()
        button.setTitle("Forward!", for: .normal)
        button.backgroundColor = .systemMint
        button.layer.cornerRadius = button.frame.height / 2
        button.addTarget(self, action: #selector(forwardButtonTap), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    private lazy var backButton: UIButton = {
        let button = UIButton()
        button.setTitle("Back", for: .normal)
        button.backgroundColor = .systemTeal
        button.layer.cornerRadius = button.frame.height / 2
        button.addTarget(self, action: #selector(backButtonTap), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    var storyLabel: UILabel = {
        let label = UILabel()
        label.text = "Hi, \(name.formatted()), glad to see you!"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .boldSystemFont(ofSize: 24)
        label.textAlignment = .natural
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(storyLabel)
        view.addSubview(forwardButton)
        view.addSubview(backButton)
        view.backgroundColor = .darkGray
        self.navigationItem.setHidesBackButton(true, animated: true)
        
        NSLayoutConstraint.activate([
            storyLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            storyLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40),
            storyLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 40)
        ])
        
        NSLayoutConstraint.activate([
            forwardButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -80),
            forwardButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 200),
            forwardButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40)
        ])
        
        NSLayoutConstraint.activate([
            backButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -80),
            backButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -200),
            backButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40)
        ])
    }
    
    @objc
    private func backButtonTap(){
        navigationController?.popViewController(animated: true)
        
    }
  @objc
    private func forwardButtonTap(){
        let thirdScreenController = thirdScreenController()
        navigationController?.pushViewController(thirdScreenController, animated: true)
    }
}


