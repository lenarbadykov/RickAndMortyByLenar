//
//  SecondViewController.swift
//  RickAndMortyByLenar
//
//  Created by Ленар Бадыков on 05.10.2022.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate,  UITableViewDataSource {
    var characters = [CharacterModel]()
    let charactersRepository = CharactersRepository(apiClient: APIClient())
    let tableview: UITableView = {
        let tv = UITableView()
        tv.backgroundColor = UIColor.white
        tv.translatesAutoresizingMaskIntoConstraints = false
    //  tv.separatorColor = UIColor.blue
            return tv
}()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setNavigationBar() // navigation bar
        
        charactersRepository.getCharacters { result in
            switch result {
            case .success(let characters):
                self.characters = characters
                self.tableview.reloadData()
            case .failure(let error):
                print("\(self) retrive error: \(error)")
            }
        }
       
    }

    //navigation bar
    func setNavigationBar() {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Log out", style: .done, target: self, action: #selector(logOutTapped))
    }

    @objc func logOutTapped() {
        navigationController?.setViewControllers([ViewController()], animated: true)

    }
    // end of navigation bar
    
    func setupTableView() {
        tableview.delegate = self
        tableview.dataSource = self
        tableview.register(CustomCell.self, forCellReuseIdentifier: "cellId")
        
        view.addSubview(tableview)
        
        NSLayoutConstraint.activate([
            tableview.topAnchor.constraint(equalTo: self.view.topAnchor),
            tableview.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            tableview.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 100),
            tableview.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            tableview.leftAnchor.constraint(equalTo: self.view.leftAnchor)
        ])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let character = characters[indexPath.row]
        let cell = tableview.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! CustomCell
        cell.setCharacter(characterModel: character)
        return cell
        }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableview.deselectRow(at: indexPath, animated: true)
        let character = characters[indexPath.row]
        navigationController?.pushViewController(ThirdViewConroller(character: character), animated: true)
    }
}
    
    
    
    
    
        
        
        



    
    
        
    
    

    
    
    



