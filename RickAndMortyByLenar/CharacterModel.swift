//
//  CharacterModel.swift
//  RickAndMortyByLenar
//
//  Created by Ленар Бадыков on 22.10.2022.
//

import Foundation

struct  CharacterModel: Codable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let gender: String
    let origin: CharacterOriginModel
    let location: CharacterLocationModel
    let image: String
    let episode: [String]
    let url: String
}

struct CharacterOriginModel: Codable {
    let name: String
    let url: String
}

struct CharacterLocationModel: Codable {
    let name: String
    let url: String
}
