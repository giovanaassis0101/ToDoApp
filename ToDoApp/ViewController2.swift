//
//  ViewController2.swift
//  ToDoApp
//
//  Created by Giovana Assis on 10/06/25.
//

import UIKit

class ViewController2: UIViewController {
    
    let label = UILabel()
    let buttonOne = UIButton(type: .custom)
    let buttonTwo = UIButton(type: .custom)
    let buttonContainer = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        setupContraints()
    }
    
    func setupView () {
        view.addSubview(label)
        view.addSubview(buttonContainer)
        buttonContainer.addSubview(buttonOne)
        buttonContainer.addSubview(buttonTwo)
        
        view.backgroundColor = .blue
        label.text = "Gi Developer"
        label.textColor = .black
        buttonOne.setTitle("Botão 1", for: .normal)
        buttonOne.setTitleColor(.white, for: .normal)
        buttonOne.backgroundColor = .black
        buttonTwo.setTitle("Botão 2", for: .normal)
        buttonTwo.setTitleColor(.white, for: .normal)
        buttonTwo.backgroundColor = .black
    }
    
    func setupContraints () {
        label.translatesAutoresizingMaskIntoConstraints = false
        buttonOne.translatesAutoresizingMaskIntoConstraints = false
        buttonTwo.translatesAutoresizingMaskIntoConstraints = false
        buttonContainer.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonTwo.leadingAnchor.constraint(equalTo: buttonOne.trailingAnchor, constant: 20),
            buttonContainer.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonContainer.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 24),
            buttonOne.topAnchor.constraint(equalTo: buttonContainer.topAnchor),
            buttonOne.leadingAnchor.constraint(equalTo: buttonContainer.leadingAnchor),
            buttonOne.bottomAnchor.constraint(equalTo: buttonContainer.bottomAnchor),
            buttonTwo.topAnchor.constraint(equalTo: buttonContainer.topAnchor),
            buttonTwo.trailingAnchor.constraint(equalTo: buttonContainer.trailingAnchor),
            buttonTwo.bottomAnchor.constraint(equalTo: buttonContainer.bottomAnchor)
        
            
            
            
            
        ])
    }
    

}
