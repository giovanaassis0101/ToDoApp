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
        
        //criação e configuração da label
        let label = UILabel()
        label.text = "Hello, World!"
        
        //a view já existe no UiViewController, então ela sempre vai estar aqui se for uma UIViewController.
        //adicionando a label na hierarquia da view. (label é filha da view e a view é pai da label).
        view.addSubview(label)
        
        //configuraçòes obrigatória para criar contraints programaticamente.
        label.translatesAutoresizingMaskIntoConstraints = false
        
        //criação das constraints da label
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        //configuração da view
        view.backgroundColor = UIColor.white
        
    }


}

