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
        Rectangle()
            .cornerRadius(20)
            .frame(width: 100, height: 100)
            .onTapGesture(count: 2) {
                contador += 1
                print("Tappeado \(contador) veces")
            }
            
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
