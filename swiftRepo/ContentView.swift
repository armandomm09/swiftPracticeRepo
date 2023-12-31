//
//  ContentView.swift
//  swiftRepo
//
//  Created by Pablo Armando Mac Beath Milián on 30/12/23.
//
import SwiftUI

struct ContentView: View {
    
    private var imagenURL = URL(string: "https://developer.apple.com/swift/images/swift-og.png")
    
    var body: some View {
        AsyncImage(url: imagenURL) { Image in
            Image
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                .padding()
                .frame(width: 200)
            
        } placeholder: {
            ProgressView()
        }

    }
}







struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
