//
//  filmesListarTableViewController.swift
//  Movs - Challengue
//
//  Created by ANA  LUIZA on 21/11/18.
//  Copyright © 2018 Brenner. All rights reserved.
//

import UIKit

class filmesListarTableViewController: UITableViewController {
    var filmes:[Filme] = [ ]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var filme : Filme
        
        filme = Filme(titulo: "Animais Fantasticos : Os Crimes de Grindewald", descricao: "Newt Scamander (Eddie Redmayne) reencontra os queridos amigos Tina Goldstein (Katherine Waterston), Queenie Goldstein (Alison Sudol) e Jacob Kowalski (Dan Fogler). Ele é recrutado pelo seu antigo professor em Hogwarts, Alvo Dumbledore (Jude Law), para enfrentar o terrível bruxo das trevas Gellert Grindelwald (Johnny Depp), que escapou da custódia da MACUSA (Congresso Mágico dos EUA) e reúne seguidores, dividindo o mundo entre seres de magos sangue puro e seres não-mágicos.", imagem : #imageLiteral(resourceName: "qflbWgNtthGGl8nURPfffGEgZu6"), lancamento: "15-11-2018", genero: "Fantasia, Drama, Familia")
        filmes.append(filme)
        filme = Filme(titulo: "Missão Impossível - Efeito Fallout ", descricao: "Obrigado a unir forças com o agente especial da CIA August Walker (Henry Cavill) para mais uma missão impossível, Ethan Hunt (Tom Cruise) se vê novamente cara a cara com Solomon Lane (Sean Harris) e preso numa teia que envolve velhos conhecidos movidos por interesses misteriosos e contatos de moral duvidosa. Atormentado por decisões do passado que retornam para assombrá-lo, Hunt precisa se resolver com seus sentimentos e impedir que uma catastrófica explosão ocorra, no que conta com a ajuda dos amigos de IMF.", imagem : #imageLiteral(resourceName: "i273qQubszItr11lQNMFWnYP4J1"), lancamento: "26-07-2017", genero: "Ação, Aventura, Thriller" )
        filmes.append(filme)
        filme = Filme(titulo: "Bohemian Rhapsody", descricao: "Freddie Mercury (Rami Malek) e seus companheiros, Brian May, Roger Taylor e John Deacon mudam o mundo da música para sempre ao formar a banda Queen durante a década de 1970. Porém, quando o estilo de vida extravagante de Mercury começa a sair do controle, a banda tem que enfrentar o desafio de conciliar a fama e o sucesso com suas vidas pessoais cada vez mais complicadas.", imagem : #imageLiteral(resourceName: "lHu1wtNaczFPGFDTrjCSzeLPTKN"), lancamento: "02-11-2018", genero: "Drama, Musica" )
        filmes.append(filme)
        filme = Filme(titulo: "A Freira", descricao: "Quando uma jovem freira em uma abadia de clausura na Romênia tira a própria vida, um padre com um passado assombrado e uma noviça no limiar de seus votos finais são enviados pelo Vaticano para investigar o caso. Juntos, eles descobrem o segredo profano da ordem. Arriscando não apenas suas vidas, mas sua fé e suas próprias almas, eles enfrentam uma força maléfica na forma da mesma freira demoníaca que primeiro aterrorizou o público em 'Invocação do Mal 2', enquanto a abadia se torna um campo de batalha horrível entre os vivos e os condenados.", imagem : #imageLiteral(resourceName: "9ShELeGBnk5HYgI0cLfDuS4JMb3"), lancamento: "06-09-2018", genero: "Terror, Misterio, Thriller" )
        filmes.append(filme)
        filme = Filme(titulo: "O Grinch", descricao: "O mesquinho Grinch odeia o Natal e quer tornar todos os Whos da cidade de Whoville tão infelizes quanto ele. Ele tenta todos os ardilosos truques que consegue imaginar para roubar qualquer vestígio da data festiva, mas não consegue.", imagem : #imageLiteral(resourceName: "pmLRWxJ27R9YJi5iQJbcJx7lQBm"), lancamento: "08-11-2018", genero: "Animação, Família, Comedia, Fantasia" )
        filmes.append(filme)
        filme = Filme(titulo: "O Predador", descricao: " Uma perseguição entre naves alienígenas traz à Terra um novo predador, que acaba sendo capturado por humanos. Antes disso, ele tem seu capacete e bracelete roubados por Quinn McKenna (Boyd Holbrook), um atirador de elite que estava em missão no local onde a nave caiu. A bióloga Casey Brackett (Olivia Munn) é então chamada para examinar o ser recém-descoberto, mas ele logo consegue escapar do laboratório em que é mantido cativeiro. Ao tentar recapturá-lo Casey encontra McKenna, que está em um ônibus repleto de ex-militares com problemas. Juntos, eles buscam um meio de sobreviver e, ao mesmo tempo, proteger o pequeno Rory (Jacob Tremblay), filho de McKenna, que está com os artefatos alienígenas pegos pelo pai.", imagem : #imageLiteral(resourceName: "yhIqpoYFnAra24si0JqFEWdiPOX"), lancamento: "14-09-2018", genero: "Ação, Aventura, Thriller" )
        filmes.append(filme)
        filme = Filme(titulo: "O Primeiro Homem na Lua", descricao: "Um olhar sobre a vida do astronauta Neil Armstrong e a jornada para se tornar o primeiro homem a andar na Lua. Também a de toda uma nação durante a mais perigosas e lendária das missão espacial que o levou a ser o primeiro homem a caminhar na Lua a 20 de julho de 1969", imagem : #imageLiteral(resourceName: "5UUJHL1KRF2xSQ3b712NnM3pA6k"), lancamento: "12-10-2018", genero: "Historia, Drama" )
        filmes.append(filme)
        filme = Filme(titulo: "Venom", descricao: "Eddie Brock é um jornalista que investiga o misterioso trabalho de um cientista, suspeito de utilizar cobaias humanas em experiencias mortais. Quando ele entra em contato com um simbionte alienígena, Eddie torna-se Venom, uma máquina de matar incontrolável, que nem ele pode conter.", imagem : #imageLiteral(resourceName: "wdcc8n9BB5gO5Y7zIhHLSzxSTc6"), lancamento: "05-10-2018", genero: "Ficção Cientifica" )
        filmes.append(filme)
        filme = Filme(titulo: "Vingadores - Guerra Infinita", descricao: "Após 10 anos de uma viagem cinematográfica sem precedentes e que abrange todo o universo cinematográfico Marvel, Vingadores: Guerra Infinita traz ao grande ecrã o maior confronto de todos os tempos. Os Vingadores e os seus aliados Super-Heróis devem estar dispostos a sacrificar tudo para tentarem derrotar o poderoso Thanos antes que o seu ataque de devastação e ruína acabe com o universo.", imagem : #imageLiteral(resourceName: "rkHe0BfOo1f5N2q6rxgdYac7Zf6"), lancamento: "02-04-2018", genero: "Ação, Aventura, Ficção Cientifica, Fantasia" )
        filmes.append(filme)
        filme = Filme(titulo: "Nasce Uma Estrela", descricao: "Nesta nova versão da trágica história de amor, Cooper interpreta Jackson Maine, um músico consagrado que descobre – e se apaixona – por Ally (Gaga), uma artista em dificuldades. Esta tinha desistido de realizar o sonho de ser cantora até que Jack a ajuda a chegar aos grandes palcos e ao estrelato. Mas enquanto a carreira de Ally descola, o lado pessoal da relação de ambos começa a deteriorar-se, ao mesmo tempo que Jack luta contra os seus próprios fantasmas.", imagem : #imageLiteral(resourceName: "x3X0ljTiVpVFZjXCKxEJuuKx21T"), lancamento: "11-10-2018", genero: "Drama, Musica, Romance" )
        filmes.append(filme)
        filme = Filme(titulo: "Os Incriveis 2", descricao: "Helen é chamada para liderar uma campanha que irá trazer os Super-Heróis de volta, enquanto Bob se encontra em casa a tratar das tarefas normais do dia a dia, quando aparece um novo vilão com um brilhante e perigoso plano, que apenas Os Incríveis poderão ultrapassar juntos.", imagem : #imageLiteral(resourceName: "y3EEb7o6NxK0pl0WsOswCos663y"), lancamento: "28-05-2018", genero: "Ação, Aventura, Animação, Aventura" )
        filmes.append(filme)
        filme = Filme(titulo: "Operação Overlord", descricao: "Uma tropa de paraquedistas americanos é lançada atrás das linhas inimigas para uma missão crucial. Mas, quando se aproximam do alvo percebem que não é só uma simples operação militar e tem mais coisas acontecendo no lugar, que está ocupado por nazis.", imagem : #imageLiteral(resourceName: "jnkxGuVgA9B9Hy9kbHdhS9VVK9g"), lancamento: "08-10-2018", genero: "Ação, Terror, Ficção Cientifica, Guerra, Thriller" )
        
        //REST.recuperarFilmes()
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
        
        celula.tituloLabel.text = filme.titulo
        celula.descricaoLabel.text = filme.descricao
        celula.filmeImageView.image = filme.imagem
        
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
