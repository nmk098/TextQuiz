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
        button.backgroundColor = .systemGray3
        button.layer.cornerRadius = button.frame.height / 2
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    private lazy var backButton: UIButton = {
        let button = UIButton()
        button.setTitle("Forward!", for: .normal)
        button.backgroundColor = .systemGray3
        button.layer.cornerRadius = button.frame.height / 2
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.black, for: .normal)
        return button
    }()
   
    var storyLabel: UILabel = {
        let label = UILabel()
        label.text = "Hi, \(name.formatted()), glad to see you!"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .boldSystemFont(ofSize: 20)
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(storyLabel)
        view.backgroundColor = .darkGray
     //   self.navigationItem.setHidesBackButton(true, animated: true)
       
        NSLayoutConstraint.activate([
            storyLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            storyLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100),
            storyLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 100)
        ])
        
    }
}

extension FirstScreenViewController {
    
}
