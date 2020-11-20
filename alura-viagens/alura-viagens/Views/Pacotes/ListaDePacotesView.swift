//
//  ListaDePacotesView.swift
//  alura-viagens
//
//  Created by Cleber Reis on 30/09/20.
//  Copyright © 2020 Ândriu Felipe Coelho. All rights reserved.
//

import SwiftUI

struct ListaDePacotesView: View {
    
    var categorias: [String : [PacoteDeViagem]] {
        Dictionary(grouping: pacotesDeViagens, by: { $0.categoria.rawValue } )
    }

    var body: some View {
        NavigationView {
            List {
                ForEach(categorias.keys.sorted(), id: \.self) { chave in
                    SecaoPacotesView(nomeDaSecao: chave, pacotes: self.categorias[chave]!)
                }
            }
            .navigationBarTitle("Pacotes")
            .padding(.leading, -10)
            .padding(.trailing, -10)
            .onAppear {
                UITableView.appearance().separatorStyle = .none
                UITableViewCell.appearance().backgroundColor = UIColor(red: 247.0/255, green: 247.0/255, blue: 247.0/255, alpha: 1)
                UINavigationBar.appearance().backgroundColor = UIColor(red: 247.0/255, green: 247.0/255, blue: 247.0/255, alpha: 1)
            }
            .onDisappear {
                UITableView.appearance().separatorStyle = .singleLine
                UITableViewCell.appearance().backgroundColor = nil
                UINavigationBar.appearance().backgroundColor = nil
            }
        }
    }
}

struct ListaDePacotesView_Previews: PreviewProvider {
    static var previews: some View {
        ListaDePacotesView()
    }
}
