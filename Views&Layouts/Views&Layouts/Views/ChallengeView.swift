//
//  ChallengeView.swift
//  Views&Layouts
//
//  Created by Gilberto Magno on 16/03/23.
//

import Foundation
import SwiftUI

struct ChallengeView: View {
    
    var body: some View {
        VStack {
            Text(" Crie uma tela que contenha um VStack com um Text e uma Image. A imagem deve estar acima do texto e ambos devem estar centralizados na tela.")
                .padding()
                .navigationTitle("Desafio")
            CardView()
                .padding()
        }
    }
    
    
}
