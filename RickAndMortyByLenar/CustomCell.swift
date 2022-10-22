//
//  c.swift
//  RickAndMortyByLenar
//
//  Created by Ленар Бадыков on 15.10.2022.
//

import UIKit
import SDWebImage

class CustomCell: UITableViewCell {
    var character: CharacterModel?
    
    let cellView: UIView = {
            let view = UIView()
            view.backgroundColor = UIColor.black
            view.layer.cornerRadius = 10
            view.translatesAutoresizingMaskIntoConstraints = false
            return view
        }()
        
    let nameLabel: UILabel = {
        let label = UILabel()
        // label.text = "Name"
        label.textColor = UIColor.white
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let statusLabel: UILabel = {
        let lableTwo = UILabel()
        lableTwo.textColor = UIColor.white
        lableTwo.font = UIFont.boldSystemFont(ofSize: 16)
        lableTwo.translatesAutoresizingMaskIntoConstraints = false
        return lableTwo
    }()
    
    let genderLabel: UILabel = {
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
        contentView.addSubview(cellView)
        cellView.addSubview(nameLabel)
        cellView.addSubview(statusLabel)
        cellView.addSubview(genderLabel)
        cellView.addSubview(avatar)
        self.selectionStyle = .none
        
        NSLayoutConstraint.activate([
            cellView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            cellView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            cellView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            cellView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
        ])
    
        nameLabel.topAnchor.constraint(equalTo: cellView.topAnchor, constant: 10).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: avatar.trailingAnchor, constant: 10).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: cellView.trailingAnchor, constant: -10).isActive = true
        
        statusLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 4).isActive = true
        statusLabel.leadingAnchor.constraint(equalTo: avatar.trailingAnchor, constant: 10).isActive = true
        statusLabel.trailingAnchor.constraint(equalTo: cellView.trailingAnchor, constant: -10).isActive = true
        
        genderLabel.topAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 4).isActive = true
        genderLabel.leadingAnchor.constraint(equalTo: avatar.trailingAnchor, constant: 10).isActive = true
        genderLabel.trailingAnchor.constraint(equalTo: cellView.trailingAnchor, constant: -10).isActive = true
        genderLabel.bottomAnchor.constraint(lessThanOrEqualTo: cellView.bottomAnchor, constant: -10).isActive = true
        
        avatar.heightAnchor.constraint(equalToConstant:60).isActive = true
        avatar.widthAnchor.constraint(equalToConstant: 60).isActive = true
        avatar.centerYAnchor.constraint(equalTo: cellView.centerYAnchor).isActive = true
        avatar.leadingAnchor.constraint(equalTo: cellView.leadingAnchor, constant: 10).isActive = true
        
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setCharacter(characterModel: CharacterModel) {
        self.character = characterModel
        nameLabel.text = "Name: \(characterModel.name)"
        statusLabel.text = "Status: \(characterModel.status)"
        genderLabel.text = "Gender: \(characterModel.gender)"
        avatar.backgroundColor = .green 
        backgroundColor = UIColor.white
        if let imageUrl = URL(string: characterModel.image) {
            avatar.sd_setImage(with: imageUrl)
        } else {
            avatar.image = nil
        }
        
    }
    
}
