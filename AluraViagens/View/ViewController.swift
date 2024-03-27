//
//  ViewController.swift
//  AluraViagens
//
//  Created by Carolina Bortoli M.S on 08/03/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viagensTableView: UITableView!
    //Apos conectar a table view como outlet na view controller, precisamos dizer que a table vai implementar esse protocolo de TableViewDataSource
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viagensTableView.dataSource = self
        viagensTableView.delegate = self
        viagensTableView.sectionHeaderTopPadding = 0 //tirar o espaço em branco na parte de cima
        view.backgroundColor = UIColor(red: 30.0/255, green: 59.0/255, blue: 119.0/255, alpha: 1.0)
    }
}

//UITableViewDataSource -> protocolo para a TableView funcionar. Um protocolo é um conjunto de métodos ou propriedades. No momento que implementamos a UITbaleView, obrigatoriamente precisamos implementar o protocolo UITableViewDataSource, que nos habilita a utilizar 2 métodos obrigatórios:
extension ViewController: UITableViewDataSource {
    //Configuramos o número de linhas da table view.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    //Criamos uma célula para ser exibida.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        cell.textLabel?.text = "viagem \(indexPath.row)"
        
        return cell
    }
}

//Para exibir o header na TableView, criamos a extensao de viewcontroler com o protocolo UITableViewDelegate. Nesse caso, os métodos sao opcionais
extension ViewController: UITableViewDelegate {
    //Primeiro método: utilizado para configurar qual View será exibido no header da TableView.
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView = Bundle.main.loadNibNamed("HomeTableViewHeader", owner: self, options: nil)?.first as? HomeTableViewHeader
        
        headerView?.configuraView()
        
        return headerView
    }
    
    //Segundo método para a altura do header
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 300
    }
} //O delegate é um design pattern que Permite a comunicação entre o objeto e sua implementação. Muito útil para impedir que outros objetos conheçam o tipo concreto de uma classe, por exemplo.
// A TableView, nos permite configurar cabeçalhos e rodapés de uma seção, excluir e reordenar células, além de realizar outras ações em uma visualização de tabela.


