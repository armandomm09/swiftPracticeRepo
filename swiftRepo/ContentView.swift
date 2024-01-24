//
//  ContentView.swift
//  swiftRepo
//
//  Created by Pablo Armando Mac Beath Milián on 30/12/23.
//
import SwiftUI


struct Dispositivo {
    let name: String
    let systemImage: String
}

let devicesArray = [
Dispositivo(name: "iPad", systemImage: "ipad"),
Dispositivo(name: "iPhone", systemImage: "iphone"),
Dispositivo(name: "Homepod", systemImage: "homepodmini"),
Dispositivo(name: "Mac Mini", systemImage: "macmini"),
Dispositivo(name: "Apple TV", systemImage: "appletv")
]


struct ContentView: View {
    
   
    var body: some View {
        NavigationView {
            List {
                ForEach(devicesArray, id: \.name) {dispositivo in
                    Label(dispositivo.name, systemImage: dispositivo.systemImage)
                        .swipeActions{
                            Button {
                                print("Favo")
                            } label: {
                                Label("Favorito", systemImage: "star")
                            }
                            .tint(.indigo)
                            Button {
                                print("Share")
                            } label: {
                                Label("Share", systemImage: "square.and.arrow.up")
                            }
                            .tint(.blue)
                        }
                        .swipeActions(edge: .leading) {
                            Button {
                                print("likeado")
                            } label: {
                                Label("Like", systemImage: "hand.thumbsup")
                            }
                            .tint(.green)
                        }
                }
            }
            .refreshable(action: {
                print("Refresheado")
            })
            .navigationTitle("Devices")
        }
    }
}







struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
