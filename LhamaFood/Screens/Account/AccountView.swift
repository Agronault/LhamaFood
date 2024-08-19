//
//  AccountView.swift
//  LhamaFood
//
//  Created by Alexandre Martins on 18/08/24.
//

import SwiftUI

struct AccountView: View {
    
    @State private var name = ""
    @State private var email = ""
    @State private var birthday = Date()
    @State private var allowAtribution = true
    @State private var blockOthersPaid = false
    
    var body: some View {
        NavigationView{
            Form {
                Section(header: Text("Dados pessoais")) {
                    TextField("Nome", text: $name)
                    TextField("E-mail", text: $email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        .disableAutocorrection(true)
                    DatePicker("Nascimento", selection: $birthday, displayedComponents: .date)
                    
                    Button {
                        print("aaaa")
                    } label: {
                        Text("Salvar")
                    }
                }
                
                Section(header: Text("Opções")) {
                    Toggle("Permitir que me atribuam contas", isOn: $allowAtribution)
                    Toggle("Somente você marca pago", isOn: $blockOthersPaid)
                }.toggleStyle(SwitchToggleStyle(tint: .lhamaPrimary))
                
            }.navigationTitle("Conta")
        }
    }
}

#Preview {
    AccountView()
}
