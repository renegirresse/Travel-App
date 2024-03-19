//
//  ViagemViewModel.swift
//  AluraViagens
//
//  Created by Rene Girresse on 15/03/24.
//

import Foundation

enum ViagemViewModelType: String {
    case destaques
    case ofertas
    case iternacionais
}

protocol ViagemViewModel {
    var tituloSessao: String {get}
    var tipo: ViagemViewModelType {get}
    var viagens: [Viagem] {get set}
    var numeroDeLinhas: Int {get}
}
