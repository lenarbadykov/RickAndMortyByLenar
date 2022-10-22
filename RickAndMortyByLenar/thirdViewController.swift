//
//  thirdViewController.swift
//  RickAndMortyByLenar
//
//  Created by Ленар Бадыков on 11.10.2022.
//

import UIKit
class ThirdViewConroller: UIViewController, UITableViewDelegate,  UITableViewDataSource {
    
    let character: CharacterModel
    
    let tableview2: UITableView = {
        let tv2 = UITableView()
        tv2.backgroundColor = UIColor.white
        tv2.translatesAutoresizingMaskIntoConstraints = false
        return tv2
    }()
    
    init(character: CharacterModel) {
        self.character = character
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView2()
    }
   
    func setupTableView2() {
        tableview2.delegate = self
        tableview2.dataSource = self
        tableview2.register(CustomCell2.self, forCellReuseIdentifier: "cellId2")
        
        view.addSubview(tableview2)
        
        NSLayoutConstraint.activate([
            tableview2.topAnchor.constraint(equalTo: self.view.topAnchor),
            tableview2.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            tableview2.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            tableview2.leftAnchor.constraint(equalTo: self.view.leftAnchor)
        ])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 500
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell2 = tableview2.dequeueReusableCell(withIdentifier: "cellId2", for: indexPath) as! CustomCell2
        cell2.episodes.text = "Episodes"
        
        cell2.avatar2.backgroundColor = .green //???
        cell2.backgroundColor = UIColor.white
        return cell2
        }
    
}
