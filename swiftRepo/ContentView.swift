//
//  ContentView.swift
//  swiftRepo
//
//  Created by Pablo Armando Mac Beath Milián on 30/12/23.
//
import SwiftUI

struct ContentView: View {
    
    @State var contador: Int = 0
    
    var body: some View {
        VStack{
            Text("Cuenta: \(contador)")
                .bold()
                .padding()
                .font(.largeTitle)
            Button("Contar"){
                contador += 1
            }
            ListTeams()
            Spacer()
        }
    }
}

struct ListTeams: View {
    
   @StateObject private var teamsModel = TeamViewModel()
    
    
    var body: some View {
        NavigationView{
            List(teamsModel.teams, id: \.self) { team in
                Text(team)
            }
            .navigationTitle("FRC Teams")
            .navigationBarItems(leading:
                                    Button("Añadir equipos"){teamsModel.addTeams()})
        }
        
    }
    
    
}

final class TeamViewModel: ObservableObject{
    @Published var teams: [String] = []
    
    init(){
        teams = ["Imperator 5887", "Voltec 6647", "Nautilus 4010"]
    }
    
    func addTeams() {
        teams.append("Overture 7421")
        teams.append("Lambot 3478")
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
