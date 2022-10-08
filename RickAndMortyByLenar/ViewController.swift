//
//  ViewController.swift
//  RickAndMortyByLenar
//
//  Created by Ленар Бадыков on 14.09.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        // фон
        let backgroundImageView = UIImageView()
        backgroundImageView.image = UIImage(named: "planet")
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(backgroundImageView)
        let constraints = [
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
        
        // логин
        let loginTextField = UITextField()
        loginTextField.borderStyle = .roundedRect
        loginTextField.placeholder = "Nick"
        loginTextField.textAlignment = .center
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loginTextField)
        loginTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        loginTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 220).isActive = true
        loginTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70).isActive = true
        loginTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -70).isActive = true

        // пароль
        let passwordTextField = UITextField()
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.placeholder = "PassWord"
        passwordTextField.textAlignment = .center
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(passwordTextField)
        passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor, constant: 20).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -70).isActive = true
        
        // кнопка
        let button = UIButton() 
        button.layer.cornerRadius = 5
        button.setTitle("Don't", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .green
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        button.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20).isActive = true
        button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70).isActive = true
        button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -70).isActive = true
        button.addTarget(self, action: #selector(pressTheButton), for: .touchUpInside)
        
        
        }
   
    // нажатие
    @objc func pressTheButton() {
    let press = SecondViewController()
        present(press, animated: true, completion: nil)
        
        
    }
    
    
    
  
}


