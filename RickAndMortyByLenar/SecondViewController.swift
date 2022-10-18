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
    }

    func setupTableView() {
        tableview.delegate = self
        tableview.dataSource = self
        tableview.register(CustomCell.self, forCellReuseIdentifier: "cellId")
        
        view.addSubview(tableview)
        
        NSLayoutConstraint.activate([
            tableview.topAnchor.constraint(equalTo: self.view.topAnchor),
            tableview.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            tableview.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            tableview.leftAnchor.constraint(equalTo: self.view.leftAnchor)
        ])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 1
        return 10
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            // 2
        let cell = tableview.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! CustomCell
        cell.nameLable.text = "Name:"
        cell.statusLable.text = "Status:"
        cell.genderLable.text = "Gender:"
        cell.avatar.backgroundColor = .green //???
        cell.backgroundColor = UIColor.white
        return cell
        }

}
    
    
    
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableViewRaM.deselectRow(at: indexPath, animated: true)
//        print("cell tapped")
//    }
    
        
    
    

    
    
    


