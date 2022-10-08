//
//  SecondViewController.swift
//  RickAndMortyByLenar
//
//  Created by Ленар Бадыков on 05.10.2022.
//

import UIKit
class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let tableViewRaM = UITableView()
        tableViewRaM.translatesAutoresizingMaskIntoConstraints = false
        tableViewRaM.backgroundColor = .white
        view.addSubview(tableViewRaM)
        tableViewRaM.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        let tableViewRaMConstraints = [
            tableViewRaM.topAnchor.constraint(equalTo: view.topAnchor),
            tableViewRaM.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableViewRaM.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableViewRaM.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ]
        NSLayoutConstraint.activate(tableViewRaMConstraints)
        }
        
    
    }
    
   
    
    
    


