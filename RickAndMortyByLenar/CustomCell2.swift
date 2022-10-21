//
//  CustomCell2.swift
//  RickAndMortyByLenar
//
//  Created by Ленар Бадыков on 20.10.2022.
//

import UIKit

class CustomCell2: UITableViewCell {
    
    let cellView2: UIView = {
            let view2 = UIView()
            view2.backgroundColor = UIColor.black
            view2.layer.cornerRadius = 10
            view2.translatesAutoresizingMaskIntoConstraints = false
            return view2
        }()
    
    
    let avatar2: UIImageView = {
        let avatarImage2 = UIImageView()
        //avatarImage.image = UIImage(named: "question")
        avatarImage2.translatesAutoresizingMaskIntoConstraints = false
        //avatarImage2.layer.cornerRadius = 30
        avatarImage2.clipsToBounds = true
        return avatarImage2
    }()
    
    let episodes: UILabel = {
        let label4 = UILabel()
        // label.text = "Name"
        label4.textColor = UIColor.white
        label4.font = UIFont.boldSystemFont(ofSize: 16)
        label4.translatesAutoresizingMaskIntoConstraints = false
        return label4
    }()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupView2()

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView2() {
        addSubview(cellView2)
        cellView2.addSubview(avatar2)
        cellView2.addSubview(episodes)
        self.selectionStyle = .none
        
        NSLayoutConstraint.activate([
            cellView2.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            cellView2.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10),
            cellView2.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            cellView2.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
        
        episodes.heightAnchor.constraint(equalToConstant: 20).isActive = true
        episodes.widthAnchor.constraint(equalToConstant: 70).isActive = true
        episodes.topAnchor.constraint(equalTo: avatar2.bottomAnchor, constant: 10).isActive = true
        episodes.centerXAnchor.constraint(equalTo: cellView2.centerXAnchor).isActive = true
    
        avatar2.heightAnchor.constraint(equalToConstant:100).isActive = true
        avatar2.widthAnchor.constraint(equalToConstant: 150).isActive = true
        avatar2.centerXAnchor.constraint(equalTo: cellView2.centerXAnchor).isActive = true
        avatar2.topAnchor.constraint(equalTo: cellView2.topAnchor, constant: 10).isActive = true
}
    
}
