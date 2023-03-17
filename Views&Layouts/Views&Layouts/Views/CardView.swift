//
//  CardView.swift
//  Views&Layouts
//
//  Created by Gilberto Magno on 16/03/23.
//

import Foundation
import SwiftUI


struct CardView: View {
    
    var body: some View {
        return setUpView()
    }
    
    func setUpView() -> some View {
        Rectangle()
            .cornerRadius(15)
            .foregroundColor(.pink)
        
            .shadow(color: Color.gray, radius: 3, x: 0, y: 0)
            .overlay(alignment: .center, content: {
                    VStack {
                        AsyncImage(url: URL(string: "https://i.ibb.co/kD3BNch/swiftui-96x96-2x.png"))
                        Text("A Tela do Desafio")
                            .foregroundColor(.white)
                    }
            })
    }
    
    
}
