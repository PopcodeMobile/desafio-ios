//
//  filmesListarTableViewController.swift
//  Movs - Challengue
//
//  Created by ANA  LUIZA on 21/11/18.
//  Copyright © 2018 Brenner. All rights reserved.
//

import UIKit

class filmesListarTableViewController: UITableViewController {
    var filmes: [Filme] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        API.recuperarFilmes { (f: [Filme]) in
            self.salvandoFilmes(filmes: f)
        }
        print(filmes)
    }
   
    private func salvandoFilmes(filmes: [Filme]) {
        self.filmes = filmes
DispatchQueue.main.async {
            self.tableView.reloadData()
            
        }
    }
    

    override func numberOfSections(in tableView: UITableView) -> Int {
 
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
        
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let filme : Filme = filmes[indexPath.row]
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath) as! FilmeCelula
         celula.tituloLabel.text = "Carregando"
        celula.descricaoLabel.text = "Aguarde para exibição do conteudo"
        celula.filmeImageView.image = #imageLiteral(resourceName: "loading")
        DispatchQueue.main.async {
            celula.tituloLabel.text = filme.title
            celula.descricaoLabel.text = filme.overview
            
            let imagePathBase = "https://image.tmdb.org/t/p/w500"
            let url = URL(string: imagePathBase + filme.poster_path)
            let dados = try? Data(contentsOf: url!)
            celula.filmeImageView.image = UIImage(data: dados!)
        }
       
        
        return celula
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detalheFilme"{
            
             if let  indexpath = tableView.indexPathForSelectedRow{
                
                let filmeSelecionado = self.filmes [indexpath.row]
                let viewDestino = segue.destination as! DetalhesViewController
                viewDestino.filme = filmeSelecionado
                
            }
        }
    }
 
}
