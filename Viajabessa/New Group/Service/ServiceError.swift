//
//  ServiceError.swift
//  Viajabessa
//
//  Created by Ronilson on 08/05/18.
//  Copyright © 2018 Ronilson Batista. All rights reserved.
//

import Foundation

enum ServiceError {
    
    case invalidRequisition
    case noAuthorized
    case notFound
    case badGateway
    case timeOut
    case notMapped
    
    var code: Int {
        switch self {
        case .invalidRequisition: return 400
        case .noAuthorized: return 403
        case .notFound: return 404
        case .badGateway: return 502
        case .timeOut: return 504
        default: return 0
        }
    }
    
    var description: String {
        switch self {
        case .invalidRequisition: return "Solicitação inválida"
        case .noAuthorized: return "Solicitação não autorizada"
        case .notFound: return "Recurso solicitado não encontrado"
        case .badGateway: return "Falha na comunicação com o servidor"
        case .timeOut: return "Tempo de comunicação com o servidor excedido"
        default: return "Erro não mapeado"
        }
    }
    
    init(code: Int) {
        switch code {
        case 400: self = .invalidRequisition
        case 403: self = .noAuthorized
        case 404: self = .notFound
        case 502: self = .badGateway
        case 504: self = .timeOut
        default: self = .notMapped
        }
    }
}
