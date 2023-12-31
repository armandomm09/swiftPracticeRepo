//
//  ContentView.swift
//  swiftRepo
//
//  Created by Pablo Armando Mac Beath Milián on 30/12/23.
//
import SwiftUI

struct NewButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.body)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(50)
    }
}

extension View {
    func buttonModifier() -> some View {
        self.modifier(NewButtonModifier())
    }
}

struct ContentView: View {
    
   
    var body: some View {
        VStack{
            Text("HOLA")
                .bold()
                .padding()
             
            Button("Boton"){
                print("botonpresionado")
            }
            .buttonModifier()
        }
    }
}







struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
