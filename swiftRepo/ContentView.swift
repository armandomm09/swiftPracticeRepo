//
//  ContentView.swift
//  swiftRepo
//
//  Created by Pablo Armando Mac Beath Milián on 30/12/23.
//
import SwiftUI

struct ContentView: View {
    
    
    
    var body: some View {
        Text("Menu Context")
            .padding()
            .contextMenu(
                ContextMenu(menuItems: {
                    Button("Equpo 1") {
                        print("Equipo 1 elegido")
                    }
                    Button("Equipo 2") {
                        print("Equipo 2 elegido")
                    }
                    Button(action: {
                        print("Equipoo 3 elegido")
                    }, label: {
                        Label("Equipo 3", systemImage: "iphone")
                    })
            }))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
