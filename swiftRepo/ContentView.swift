//
//  ContentView.swift
//  swiftRepo
//
//  Created by Pablo Armando Mac Beath Milián on 30/12/23.
//
import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        TabView {
            RoundedRectangle(cornerSize: /*@START_MENU_TOKEN@*/CGSize(width: 20, height: 10)/*@END_MENU_TOKEN@*/)
                .frame(width:200, height: 400)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            HomePage()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            ProfilePage()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Me")
                }
                
        }.frame(height: 400)
            .tabViewStyle(PageTabViewStyle())
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomePage: View {
    var body: some View {
        VStack{
            Image(systemName: "house.fill")
                .resizable()
                .scaledToFit()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            Text("hola".capitalized)
                .bold()
        }
        
    }
}

struct ProfilePage: View {
    var body: some View {
        VStack{
            Image(systemName: "person.circle")
                .resizable()
                .scaledToFit()
                .frame(width: 100)
            Text("Configurar Usuario")
                .bold()
        }
        
    }
}
