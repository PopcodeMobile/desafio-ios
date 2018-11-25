//
//  theMoviedbAPI.swift
//  Movs - Challengue
//
//  Created by ANA  LUIZA on 24/11/18.
//  Copyright © 2018 Brenner. All rights reserved.
//

 /* import Foundation


class REST {
    
    
    
    private static let pathBase = "https://api.themoviedb.org/3/movie/popular?api_key=cf32d6241d698a3c82e95ccbe4853d42&language=pt-BR&page=1&region=IOS076"
    
    private static let configuracao: URLSessionConfiguration = {
        
        let config = URLSessionConfiguration.default
        config.timeoutIntervalForRequest = 30.0
        return config
        
    }()
    
    private static let sessao = URLSession(configuration: configuracao)
    
    class func recuperarFilmes() {
        
        guard let url = URL(string: pathBase) else {return}
        
        
        let tarefa = sessao.dataTask(with: url) { (data, response ,error) in
            
            if error == nil {
                
                guard let resposta = response as? HTTPURLResponse else {return}
                
                if resposta.statusCode == 200 {
                    
                    guard let dados = data else{return}
                    
                    do {
                        
                        let recep = try JSONSerialization.jsonObject(with: dados, options: []) as! [String:Any]
                        print(recep)
                        if  let totalpages = recep["total_pages"] as? Int{
                            print("Total de paginas : \(totalpages) " )
                        }
                        if let pagina = recep["page"] as? Int{
                            print("Pagina atual : \(pagina)")
                        }
                        if let resultado = recep["results"] {
                            print("Segue resultados da JSON : \(resultado)")
                        }
                        //let filmes = try JSONDecoder().decode([Filme].self, from: dados)
                        
                        // for filme in filmes {
                        
                        //print(filme.total_results)
                        //print(filme.adult, filme.backdrop_path, filme.genre_ids, filme.id,filme.original_language, filme.overview, filme.popularity, filme.poster_path, filme.release_date, filme.release_date, filme.title, filme.video, filme.vote_average, filme.vote_count)
                        //  }
                    }catch{
                        print("Valores Recebidos mas nao convertido")
                        print(error.localizedDescription)
                        
                    }
                }else{
                    
                    print("Algum status invalido pelo servidor!!")
                }
                
            }else {
                
                print(error!)
            }
            
        }
        tarefa.resume()
    }
} */
