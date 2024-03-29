//
//  ViagemDestaqueViewModel.swift
//  AluraViagens
//
//  Created by Carolina Bortoli M.S on 28/03/24.
//

import Foundation
//implementar o protocolo ViagemViewModel
class ViagemDestaqueViewModel: ViagemViewModel {
    
    var tituloSessao: String {
    return "Destaques"
}
    var tipo: ViagemViewModelType {
        return .destaques
    }
    
    var viagens: [Viagem]
    
    var numeroDeLinhas: Int {
        return viagens.count
    }
    
    init(_ viagens: [Viagem]) {
        self.viagens = viagens
    }
}
