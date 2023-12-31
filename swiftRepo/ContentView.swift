//
//  ContentView.swift
//  swiftRepo
//
//  Created by Pablo Armando Mac Beath Milián on 30/12/23.
//
import SwiftUI

struct ContentView: View {
    
    @State var teamName: String = ""
    @AppStorage("nombreEquipo") var storagedTeamName: String = ""
    
    var body: some View {
        Form {
            TextField("Equipo", text: $teamName)
            HStack{
                Spacer()
                Button("Guardar"){
                    storagedTeamName = teamName
                }
                .padding()
                Spacer()
            }
            HStack{
                Spacer()
                Button("Imprimir Equipo"){
                    print(UserDefaults.standard.string(forKey: "nombreEquipo"))
                }
                .padding()
                Spacer()
            }
        }
        .onAppear{
            teamName = storagedTeamName
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
