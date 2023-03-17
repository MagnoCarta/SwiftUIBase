//
//  ExampleView.swift
//  Views&Layouts
//
//  Created by Gilberto Magno on 16/03/23.
//

import Foundation
import SwiftUI

struct ExampleView: View {
    
    let example: String
    
    var body: some View {
        switch example {
        case "Text":
             Text("Exemplo de Texto")
        case "Image":
             Image(systemName: "heart.fill")
                .resizable()
                .scaledToFit()
        case "Button":
             Button(action: {
                print("Botão pressionado")
            }, label: {
                Text("Pressione o Botão")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            })
        case "TextField":
             TextField("Digite um texto", text: .constant(""))
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
        case "VStack":
             VStack(spacing: 20) {
                Text("Exemplo de VStack")
                Text("Com várias views")
                Text("Empilhadas verticalmente")
            }
        case "HStack":
             HStack(spacing: 20) {
                Text("Exemplo de HStack")
                Text("Com várias views")
                Text("Dispostas horizontalmente")
            }
        case "ZStack":
             ZStack {
                Color.blue
                Text("Exemplo de ZStack")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
        default:
             Text("Exemplo não encontrado")
        }
    
    }
    
    
        
}
