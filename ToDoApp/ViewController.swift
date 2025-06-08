//
//  ViewController.swift
//  ToDoApp
//
//  Created by Giovana Assis on 06/06/25.
//

import UIKit

class ViewController: UIViewController {

    //override - significa substituir a função que já existe. viewDidLoad - é uma função que já existe na UIViewController
    override func viewDidLoad() {
        //está chamando a função que já existe
        super.viewDidLoad()
        
        let labelContainer = UIView()
        labelContainer.backgroundColor = UIColor.systemPink
        
        
        //criação e configuração da label
        let label = UILabel()
        label.text = "Hello, World!"
        label.textColor = UIColor.black
        
        //a view já existe no UiViewController, então ela sempre vai estar aqui se for uma UIViewController.
        //adicionando a label na hierarquia da view. (label é filha da view e a view é pai da label).
        view.addSubview(labelContainer)
        labelContainer.addSubview(label)
        
        //configuraçòes obrigatória para criar contraints programaticamente.
        labelContainer.translatesAutoresizingMaskIntoConstraints = false
        
        //criação das constraints da label
        labelContainer.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        labelContainer.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        label.translatesAutoresizingMaskIntoConstraints =  false
        
        label.topAnchor.constraint(equalTo: labelContainer.topAnchor, constant: 20).isActive = true
        label.bottomAnchor.constraint(equalTo: labelContainer.bottomAnchor, constant: -20).isActive = true
        label.leadingAnchor.constraint(equalTo: labelContainer.leadingAnchor, constant: 20).isActive = true
        label.trailingAnchor.constraint(equalTo: labelContainer.trailingAnchor, constant: -20).isActive = true
        
        labelContainer.layer.cornerRadius = 20
        labelContainer.layer.shadowOpacity = 5
    
        //configuração da view
        view.backgroundColor = UIColor.white
        
    }


}

