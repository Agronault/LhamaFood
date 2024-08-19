//
//  OrderView.swift
//  LhamaFood
//
//  Created by Alexandre Martins on 18/08/24.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        NavigationView(content: {
            NavigationLink(destination: Text("Destination")) {
                /*@START_MENU_TOKEN@*/Text("Navigate")/*@END_MENU_TOKEN@*/
            }.navigationTitle("Pedidos")
        })
    }
}

#Preview {
    OrderView()
}
