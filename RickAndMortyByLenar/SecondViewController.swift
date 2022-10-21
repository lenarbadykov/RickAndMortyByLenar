//
//  SecondViewController.swift
//  RickAndMortyByLenar
//
//  Created by Ленар Бадыков on 05.10.2022.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate,  UITableViewDataSource {
    
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
        
    }

    //navigation bar
    func setNavigationBar() {
               
        let doneItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: nil, action: #selector(done))
        navigationController?.navigationItem.rightBarButtonItem = doneItem
    }

    @objc func done() {
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
        
        return 10
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! CustomCell
        
        cell.nameLable.text = "Name:"
        cell.statusLable.text = "Status:"
        cell.genderLable.text = "Gender:"
        cell.avatar.backgroundColor = .green //???
        cell.backgroundColor = UIColor.white
        return cell
        }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableview.deselectRow(at: indexPath, animated: true)
        navigationController?.pushViewController(ThirdViewConroller(), animated: true)
    }
}
    
    
    
    
    
        
        
        



    
    
        
    
    

    
    
    



