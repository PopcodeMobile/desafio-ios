//
//  Filmes.swift
//  Movs - Challengue
//
//  Created by ANA  LUIZA on 20/11/18.
//  Copyright © 2018 Brenner. All rights reserved.
//


import Foundation

struct Result: Decodable {
    
    let results: [Filme]
    let total_pages: Int
    let page: Int
    let total_results: Int
}



class Filme: Codable {
    let id: Int
    let title: String
    let overview: String
    let genre_ids: Array<Int>
    let poster_path: String
    let release_date: String
   
    
    
    init (id: Int, title: String, overview: String, genre_ids: Array<Int>,  poster_path: String, release_date: String ) {
        self.id = id
        self.poster_path = poster_path
        self.title = title
        self.genre_ids = genre_ids
        self.release_date = release_date
        self.overview = overview
        
}
}
struct Genero: Codable {
    
    let id: Int
    let name: String
}
struct GeneroResultado: Codable {
    
    let genres: [Genero]
    
}



