//
//  ContentView.swift
//  swiftRepo
//
//  Created by Pablo Armando Mac Beath Milián on 30/12/23.
//
import SwiftUI

struct ContentView: View {
    
    @SceneStorage("equipo") private var team: String = ""
    @SceneStorage("playoffs") private var playoffs: Bool = false
    
    var body: some View {
        Form {
            TextEditor(text: $team)
                .frame(width: 300, height: 300)
            Toggle("Playoffs?", isOn: $playoffs)
            HStack{
                Spacer()
                Button(playoffs ? "Califica alianza" : "Califica equipo") {
                    print("Guardando")
                }
                Spacer()
            }
        }
    }
}







struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
