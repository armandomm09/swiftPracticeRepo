//
//  ContentView.swift
//  swiftRepo
//
//  Created by Pablo Armando Mac Beath Milián on 30/12/23.
//
import SwiftUI

struct ContentView: View {
    
    @State var showAlert: Bool = false
    
    var body: some View {
        VStack {
            Text("Mandar forms")
            Button("Mandar"){
                showAlert = true
            }
        }
        .alert(isPresented: $showAlert, content: {
            Alert(title: Text("Mandar?"), message: Text("Seguro que quieres mandar el forms?"), primaryButton: Alert.Button.default(Text("Aceptar"), action: {
                print("Se mando")
            }), secondaryButton: Alert.Button.destructive(Text("Cancelar"), action: {
                print("No se mando")
            }))
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
