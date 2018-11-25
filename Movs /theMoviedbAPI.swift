//
//  theMoviedbAPI.swift
//  Movs - Challengue
//
//  Created by ANA  LUIZA on 24/11/18.
//  Copyright © 2018 Brenner. All rights reserved.
//

import Foundation



class API {
    var teste = 1
    
    
    private static let pathBaseGeral = "https://api.themoviedb.org/3/movie/popular?api_key=cf32d6241d698a3c82e95ccbe4853d42&language=pt-BR&page=1&region=IOS076"
    private static let pathBaseGenero = "https://api.themoviedb.org/3/genre/movie/list?api_key=cf32d6241d698a3c82e95ccbe4853d42&language=pt-BR"
    
    private static let configuracao: URLSessionConfiguration = {
        
        let config = URLSessionConfiguration.default
        config.timeoutIntervalForRequest = 2.0
        return config
        
    }()
    
    private static let sessao = URLSession(configuration: configuracao)
    
    class func recuperarFilmes(retorno: (([Filme]) -> Void)?) {
        
        guard let url = URL(string: pathBaseGeral) else {return}
        
        
        let tarefa = sessao.dataTask(with: url) { (data, response ,error) in
            
            if error == nil {
                
                guard let resposta = response as? HTTPURLResponse else {return}
                
                if resposta.statusCode == 200 {
                    
                    guard let dados = data else{return}
                    
                    do {
                     
                        let resposta = try  JSONDecoder().decode(Result.self, from: dados)
                        
                        retorno?(resposta.results)
                    }catch{
                        print(error.localizedDescription)
                        
                    }
                    
                }else{
                    
                    print( )
                }
                
            }else {
                
                print(error!)
            }
            
        }
        tarefa.resume()
        }
   class func recuperarGenero(retorno: (([Genero]) -> Void)?) {
        
        guard let url = URL(string: pathBaseGenero) else {return}
        
        
        let tarefa = sessao.dataTask(with: url) { (data, response ,error) in
            
            if error == nil {
                
                guard let resposta = response as? HTTPURLResponse else {return}
                
                if resposta.statusCode == 200 {
                    
                    guard let dados = data else{return}
                    
                    do {
                        
                        let resposta = try  JSONDecoder().decode(GeneroResultado.self, from: dados)
                        
                        retorno?(resposta.genres)
                    }catch{
                        print(error)
                        
                    }
                    
                }else{
                    
                    print( )
                }
                
            }else {
                
                print(error!)
            }
            
        }
        tarefa.resume()
    }
}
   
