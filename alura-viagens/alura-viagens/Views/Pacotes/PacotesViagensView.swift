//
//  PacotesViagensView.swift
//  alura-viagens
//
//  Created by Cleber Reis on 28/09/20.
//  Copyright © 2020 Ândriu Felipe Coelho. All rights reserved.
//

import SwiftUI

struct PacotesViagensView: View {
    
    var pacoteDeViagem: PacoteDeViagem
    
    var body: some View {
        GeometryReader { view in
            VStack {
                Image(self.pacoteDeViagem.imagens.first ?? "")
                    .resizable()
                    .frame(height: 135)
                    .clipped()
                VStack {
                    Text(self.pacoteDeViagem.titulo)
                        .font(.custom("Avenir Black", size: 12))
                        .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                    Text(self.pacoteDeViagem.descricao)
                        .font(.custom("Avenir", size: 10))
                        .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                    Text(self.pacoteDeViagem.dataValidade)
                        .font(.custom("Avenir", size: 10))
                        .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                    Text("a partir de")
                        .font(.custom("Avenir", size: 9))
                        .frame(minWidth: 0, maxWidth: view.size.width, alignment: .trailing)
                    Text("R$ \(self.pacoteDeViagem.valor)")
                        .font(.custom("Avenir Black", size: 16))
                        .frame(minWidth: 0, maxWidth: view.size.width, alignment: .trailing)
                        .foregroundColor(Color.orange)
                    Text("em até 12x")
                        .font(.custom("Avenir", size: 9))
                        .frame(minWidth: 0, maxWidth: view.size.width, alignment: .trailing)
                    Text("cancelamento Grátis")
                        .font(.custom("Avenir Black", size: 9))
                        .frame(minWidth: 0, maxWidth: view.size.width, alignment: .trailing)
                        .foregroundColor(Color.green)
                }
                .padding(.leading, 5)
                .padding(.trailing, 5)
                .padding(.bottom, 5)
                .padding(.top, -5)
            }
        }
        .frame(width: 180, height: 250)
        .shadow(radius: 5, x: 1, y: 1 )
        .border(Color(red: 221/255, green: 221/255, blue: 221/255))
    }
}

struct PacotesViagensView_Previews: PreviewProvider {
    static var previews: some View {
        PacotesViagensView(pacoteDeViagem: pacotesDeViagens[0])
            .previewLayout(.fixed(width: 180, height: 250))
    }
}
