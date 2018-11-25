//
//  Filmes.swift
//  Movs - Challengue
//
//  Created by ANA  LUIZA on 20/11/18.
//  Copyright © 2018 Brenner. All rights reserved.
//

import UIKit

class Filme {
    
    var titulo: String!
    var descricao: String!
    var imagem: UIImage!
    var lancamento: String!
    var genero: String!
    
    init ( titulo : String, descricao: String, imagem : UIImage, lancamento: String, genero: String ){
        
        self.titulo = titulo
        self.descricao = descricao
        self.imagem = imagem
        self.lancamento = lancamento
        self.genero = genero
        
        
    }
    
    
    
    
}
