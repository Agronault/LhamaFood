//
//  Alert.swift
//  LhamaFood
//
//  Created by Alexandre Martins on 18/08/24.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidData = AlertItem(
        title: Text("Deu ruim :("),
        message: Text("A informação recebida pelo servidor foi inesperada, se continuar acontecendo é culpa do Fabrício."),
        dismissButton: .default(Text("Ok"))
    )
    static let invalidResponse = AlertItem(
        title: Text("Deu ruim :("),
        message: Text("Resposta inválida do servidor, se continuar acontecendo é culpa do Fabrício."),
        dismissButton: .default(Text("Ok"))
    )
    static let invalidUrl = AlertItem(
        title: Text("Deu ruim :("),
        message: Text("Problema ao criar requisição, se continuar acontecendo é culpa do Pierre."),
        dismissButton: .default(Text("Ok"))
    )
    static let unableToComplete = AlertItem(
        title: Text("Deu ruim :("),
        message: Text("Problema ao tentar conectar, se continuar acontecendo é culpa sua."),
        dismissButton: .default(Text("Ok"))
    )
}
