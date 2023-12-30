//
//  ContentView.swift
//  swiftRepo
//
//  Created by Pablo Armando Mac Beath Milián on 30/12/23.
//
import SwiftUI

struct ContentView: View {
    
    @State var showScreenCover: Bool = false
    
    var body: some View {
        VStack{
            Text("HOLAA")
            Button("Presiona aca") {
                
                showScreenCover = true
            }
        }
        .sheet(isPresented: $showScreenCover , onDismiss:{ showScreenCover = false}, content: {
            ZStack {
                Color.blue.ignoresSafeArea()
                Button("Salir") {
                    showScreenCover = false
                }
                .foregroundColor(.green)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 75)
                .background(Color.gray)
                .cornerRadius(10)
                .shadow(radius: 8)
            }
        })
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
