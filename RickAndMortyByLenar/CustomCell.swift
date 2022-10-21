//
//  c.swift
//  RickAndMortyByLenar
//
//  Created by Ленар Бадыков on 15.10.2022.
//

import UIKit

class CustomCell: UITableViewCell {
    
    let cellView: UIView = {
            let view = UIView()
            view.backgroundColor = UIColor.black
            view.layer.cornerRadius = 10
            view.translatesAutoresizingMaskIntoConstraints = false
            return view
        }()
        
    let nameLable: UILabel = {
        let label = UILabel()
        // label.text = "Name"
        label.textColor = UIColor.white
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let statusLable: UILabel = {
        let lableTwo = UILabel()
        lableTwo.textColor = UIColor.white
        lableTwo.font = UIFont.boldSystemFont(ofSize: 16)
        lableTwo.translatesAutoresizingMaskIntoConstraints = false
        return lableTwo
    }()
    
    let genderLable: UILabel = {
        let lableThree = UILabel()
        lableThree.textColor = UIColor.white
        lableThree.font = UIFont.boldSystemFont(ofSize: 16)
        lableThree.translatesAutoresizingMaskIntoConstraints = false
        return lableThree
    }()
    
    let avatar: UIImageView = {
        let avatarImage = UIImageView()
        //avatarImage.image = UIImage(named: "question")
        avatarImage.translatesAutoresizingMaskIntoConstraints = false
        avatarImage.layer.cornerRadius = 30
        avatarImage.clipsToBounds = true
        return avatarImage
    }()
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupView()

    }
    func setupView() {
        addSubview(cellView)
        cellView.addSubview(nameLable)
        cellView.addSubview(statusLable)
        cellView.addSubview(genderLable)
        cellView.addSubview(avatar)
        self.selectionStyle = .none
        
        NSLayoutConstraint.activate([
            cellView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            cellView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10),
            cellView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            cellView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
    
        
        
        
        nameLable.heightAnchor.constraint(equalToConstant: 20).isActive = true
        nameLable.widthAnchor.constraint(equalToConstant: 100).isActive = true
        nameLable.topAnchor.constraint(equalTo: cellView.topAnchor, constant: 10).isActive = true
        nameLable.leftAnchor.constraint(equalTo: cellView.leftAnchor, constant: 100).isActive = true
        
        statusLable.heightAnchor.constraint(equalToConstant: 20).isActive = true
        statusLable.widthAnchor.constraint(equalToConstant: 100).isActive = true
        statusLable.topAnchor.constraint(equalTo: nameLable.bottomAnchor, constant: 2).isActive = true
        statusLable.leftAnchor.constraint(equalTo: cellView.leftAnchor, constant: 100).isActive = true

        genderLable.heightAnchor.constraint(equalToConstant: 20).isActive = true
        genderLable.widthAnchor.constraint(equalToConstant: 100).isActive = true
        genderLable.topAnchor.constraint(equalTo: statusLable.bottomAnchor, constant: 2).isActive = true
        genderLable.leftAnchor.constraint(equalTo: cellView.leftAnchor, constant: 100).isActive = true
        
        avatar.heightAnchor.constraint(equalToConstant:60).isActive = true
        avatar.widthAnchor.constraint(equalToConstant: 60).isActive = true
        avatar.centerYAnchor.constraint(equalTo: cellView.centerYAnchor).isActive = true
        avatar.leftAnchor.constraint(equalTo: cellView.leftAnchor, constant: 10).isActive = true
        
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
}
