//
//  ContentView.swift
//  swiftRepo
//
//  Created by Pablo Armando Mac Beath Milián on 30/12/23.
//
import SwiftUI

struct ContentView: View {
    
    //Mark 1:
    
    struct Dispositivo {
        let nombreDispositivo: String
        let nombreImagen: String
    }
    
    let dispositivosCasa = [
        Dispositivo(nombreDispositivo: "Laptop", nombreImagen: "laptopcomputer"),
        Dispositivo(nombreDispositivo: "Mac Mini", nombreImagen: "macmini"),
        Dispositivo(nombreDispositivo: "AppleTV", nombreImagen: "appletv")
    ]
    
    let dispositivosTrabajo = [
        Dispositivo(nombreDispositivo: "iPhone", nombreImagen: "iphone"),
        Dispositivo(nombreDispositivo: "iPad", nombreImagen: "ipad"),
        Dispositivo(nombreDispositivo: "HomePod", nombreImagen: "homepod"),
        Dispositivo(nombreDispositivo: "AppleWatch", nombreImagen: "applewatch")
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("House")) {
                    ForEach(dispositivosCasa, id: \.nombreDispositivo) { dispositivo in
                        NavigationLink(destination: Text(dispositivo.nombreDispositivo)) {
                            Label(dispositivo.nombreDispositivo, systemImage: dispositivo.nombreImagen)
                        }
                    }
                }
                Section(header: Text("Work")) {
                    ForEach(dispositivosTrabajo, id: \.nombreDispositivo) { dispositivo in
                        NavigationLink(destination: Text(dispositivo.nombreDispositivo)) {
                            Label(dispositivo.nombreDispositivo, systemImage: dispositivo.nombreImagen)
                        }
                    }
                }
            }
            .listStyle(InsetGroupedListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
