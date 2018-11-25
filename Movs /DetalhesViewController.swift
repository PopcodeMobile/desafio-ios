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
        
        filmeImageView.image = filme.imagem
        tituloLabel.text = filme.titulo
        descricaoLabel.text = filme.descricao
        generoFilme.text = filme.genero
        lancamentoYear.text = filme.lancamento
     
    }
    @IBAction func tezte(_ sender: Any) {
        
        botaoFavoritar.setImage(#imageLiteral(resourceName: "favorite_full_icon"), for: .normal)
        let alertaContoller = UIAlertController.init (title: "Adicionado aos favoritos", message: "Para remover dos favoritos pressione e solte", preferredStyle: .alert )
        let acaoConfirmar = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertaContoller.addAction(acaoConfirmar)
        present (alertaContoller, animated: true, completion: nil)
        
    }
    @IBAction func botaoFavorito(_ sender: Any) {
        
        self.botaoFavoritar.setImage(#imageLiteral(resourceName: "favorite_empty_icon"), for: .normal)
        
    }
    
    
}

