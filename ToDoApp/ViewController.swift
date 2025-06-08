//
//  ViewController.swift
//  ToDoApp
//
//  Created by Giovana Assis on 06/06/25.
//

import UIKit

class ViewController: UIViewController {
    
    let labelContainer = UIView()
    let label = UILabel()
    let button = UIButton(type: .system)
    
    let originalTextColor: UIColor =  .black
    let originalContainerColor: UIColor = .systemPink
    let originalViewColor: UIColor = .white
    let originalText = "Hello World!"
    
    var isOriginalState  = true

    //override - significa substituir a função que já existe. viewDidLoad - é uma função que já existe na UIViewController
    override func viewDidLoad() {
        //está chamando a função que já existe
        super.viewDidLoad()
        
        setupView()
        setupOriginalState()
        setupContraints()
    }
    
    func setupView() {
        view.addSubview(labelContainer)
        labelContainer.addSubview(label)
        view.addSubview(button)
        
        labelContainer.layer.cornerRadius = 20
        button.setTitle("Mudar estado", for: .normal)
        button.addAction(UIAction { _ in
            if self.isOriginalState == true {
                self.setupSecondaryState()
            } else {
                self.setupOriginalState()
            }
        }, for: .touchUpInside)
    }
    
    func setupOriginalState() {
        isOriginalState = true
        
        label.text = originalText
        label.textColor = originalTextColor
        labelContainer.backgroundColor = originalContainerColor
        view.backgroundColor = originalViewColor
    }
    
    func setupSecondaryState() {
        isOriginalState = false
        
        label.text = "Primeiro Button"
        label.textColor = UIColor.white
        labelContainer.backgroundColor = UIColor.systemPink
        view.backgroundColor = UIColor.black
    }
    
    func setupContraints() {
        labelContainer.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints =  false
        button.translatesAutoresizingMaskIntoConstraints =  false
        
        NSLayoutConstraint.activate([
            labelContainer.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            labelContainer.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.topAnchor.constraint(equalTo: labelContainer.topAnchor, constant: 20),
            label.bottomAnchor.constraint(equalTo: labelContainer.bottomAnchor, constant: -20),
            label.leadingAnchor.constraint(equalTo: labelContainer.leadingAnchor, constant: 20),
            label.trailingAnchor.constraint(equalTo: labelContainer.trailingAnchor, constant: -20),
            button.centerXAnchor.constraint(equalTo: labelContainer.centerXAnchor),
            button.topAnchor.constraint(equalTo: labelContainer.bottomAnchor, constant: 30)
        ])
    }

}

