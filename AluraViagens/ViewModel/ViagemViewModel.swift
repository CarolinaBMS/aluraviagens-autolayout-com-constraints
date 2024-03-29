//
//  VIagemViewModel.swift
//  AluraViagens
//
//  Created by Carolina Bortoli M.S on 27/03/24.
//

import Foundation

enum ViagemViewModelType: String {
    case destaques
    case ofertas
    case internacionais
}

//Tudo o que a gente precisa que seja exibido na célula configuramos aqui a informação
protocol ViagemViewModel {
    var tituloSessao: String { get }
    var tipo: ViagemViewModelType { get }
    var viagens: [Viagem] { get set }
    var numeroDeLinhas: Int { get }
}
