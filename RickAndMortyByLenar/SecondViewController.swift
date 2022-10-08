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
        tableViewRaM.backgroundColor = .black
        view.addSubview(tableViewRaM)
        tableViewRaM.register(ThirtyDayCell.self, forCellReuseIdentifier: "cellId")
        let tableViewRaMConstraints = [
            tableViewRaM.topAnchor.constraint(equalTo: view.topAnchor),
            tableViewRaM.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableViewRaM.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableViewRaM.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ]
        NSLayoutConstraint.activate(tableViewRaMConstraints)
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                // 1
                return 10
            }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                // 2
                let cell = tableViewRaM.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
                cell.backgroundColor = UIColor.white
                return cell
            }
    
        
        }
        
    
    }
    
class ThirtyDayCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
    
    
    


