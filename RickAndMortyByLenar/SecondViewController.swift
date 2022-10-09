//
//  SecondViewController.swift
//  RickAndMortyByLenar
//
//  Created by Ленар Бадыков on 05.10.2022.
//

import UIKit
class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let tableViewRaM = UITableView()
    
    var data = [String] ()
   
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.addSubview(tableViewRaM)
        for x in 0...100 {
            data.append("Some data \(x)")
        }
        
        tableViewRaM.translatesAutoresizingMaskIntoConstraints = false
        let tableViewRaMConstraints = [
            tableViewRaM.topAnchor.constraint(equalTo: view.topAnchor),
            tableViewRaM.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableViewRaM.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableViewRaM.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ]
        NSLayoutConstraint.activate(tableViewRaMConstraints)
        
        tableViewRaM.delegate = self
        tableViewRaM.dataSource = self
        tableViewRaM.backgroundColor = .black
        tableViewRaM.register(UITableViewCell.self, forCellReuseIdentifier: "cellID")
        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewRaM.dequeueReusableCell(withIdentifier: "cellID", for: indexPath)
        
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableViewRaM.deselectRow(at: indexPath, animated: true)
        print("cell tapped")
    }
    
        
    }
    

    
    
    


