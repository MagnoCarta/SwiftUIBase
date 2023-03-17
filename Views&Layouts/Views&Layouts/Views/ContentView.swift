//
//  ContentView.swift
//  Views&Layouts
//
//  Created by Gilberto Magno on 15/03/23.
//
import SwiftUI

struct ContentView: View {
    
    let views = ["Text", "Image", "Button", "TextField"]
    let layouts = ["VStack", "HStack", "ZStack"]
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section(header: Text("Views")) {
                        ForEach(views, id: \.self) { view in
                            NavigationLink(destination: ExampleView(example: view)) {
                                Text(view)
                            }
                        }
                    }
                    Section(header: Text("Layouts")) {
                        ForEach(layouts, id: \.self) { layout in
                            NavigationLink(destination: ExampleView(example: layout)) {
                                Text(layout)
                            }
                        }
                    }
                }
                NavigationLink {
                    ChallengeView()
                } label: {
                    Text("CHALLENGE!!!")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(80)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
            .navigationBarTitle("SwiftUI Examples")
            
        }
    }
}
