//
//  ContentView.swift
//  swiftRepo
//
//  Created by Pablo Armando Mac Beath Milián on 30/12/23.
//
import SwiftUI

struct ContentView: View {
    
    @State var sheetShown: Bool = false
    
    var body: some View {
        VStack{
            Text("Mandar form?")
                .padding()
            Button("Mandar"){
                sheetShown = true
            }
        }
        .actionSheet(isPresented: $sheetShown, content: {
            ActionSheet(title: Text("Mandar forms"), message: Text("Como lo vas a mandar?"),
                        buttons: [
                            .default(Text("Mandar en raw"), action: {
                print("Se mando en raw")
            }),
                            .default(Text("Mandar guardado"), action: {
                                print("Se mando lo guardado")
                            }),
                            .destructive(Text("Cancelar"), action: {
                                print("No se mando")
                            })])
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
