//
//  DetalhesViewController.swift
//  Movs - Challengue
//
//  Created by ANA  LUIZA on 21/11/18.
//  Copyright © 2018 Brenner. All rights reserved.
//

import Foundation
import UIKit


class DetalhesViewController: UIViewController{
    
    var filme : Filme!
    var estadoBotao: Int!
    var valuebut: Int!
    
    @IBOutlet weak var filmeImageView : UIImageView!
    @IBOutlet weak var tituloLabel : UILabel!
    @IBOutlet weak var descricaoLabel : UITextView!
    @IBOutlet weak var generoFilme: UILabel!
    @IBOutlet weak var lancamentoYear: UILabel!
    @IBOutlet weak var botaoFavoritar: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        API.recuperarGenero { (g: [Genero]) in
            self.recuperarGenero(generos: g)
        }
        
    }

    @IBAction func tezte(_ sender: Any) {
       
        let key = "um"
        let estado: Bool = UserDefaults.standard.bool(forKey: key)
        UserDefaults.standard.set(!estado, forKey: key)
        if estado {
            botaoFavoritar.setImage(#imageLiteral(resourceName: "favorite_full_icon"), for: .normal)
            let alertaContoller = UIAlertController.init (title: "Sucesso", message: "Adicionado aos favoritos", preferredStyle: .alert )
            let acaoConfirmar = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertaContoller.addAction(acaoConfirmar)
            present (alertaContoller, animated: true, completion: nil)
        }

        
    }
    @IBAction func botaoFavorito(_ sender: Any) {
        
        self.botaoFavoritar.setImage(#imageLiteral(resourceName: "favorite_empty_icon"), for: .normal)
        
    }
    
    func recuperarGenero( generos: [Genero]){
        var gender = ""
        for genero in generos{
            for id in filme.genre_ids {
                
                if genero.id == id{
                    gender += genero.name
                    gender += " / "
                }
            }
            
            }
        gender = String(gender.dropLast().dropLast())
        
        DispatchQueue.main.async {
            let imagePathBase = "https://image.tmdb.org/t/p/w500"
            let url = URL(string: imagePathBase + self.filme.poster_path)
            let dados = try? Data(contentsOf: url!)
            self.filmeImageView.image = UIImage(data: dados!)
            self.tituloLabel.text = self.filme.title
            self.descricaoLabel.text = self.filme.overview
            self.lancamentoYear.text = self.filme.release_date
            self.generoFilme.text = gender
        }
        
    }
    
    
}

