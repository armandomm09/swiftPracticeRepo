//
//  ContentView.swift
//  swiftRepo
//
//  Created by Pablo Armando Mac Beath Milián on 30/12/23.
//
import SwiftUI

struct ContentView: View {
    
    @State var offsets: CGSize = .zero
    
    var body: some View {
        Rectangle()
            .cornerRadius(20)
            .frame(width: 100, height: 100)
            .offset(x: offsets.width, y: offsets.height)
            .gesture(DragGesture()
                .onChanged({ value in
                    print(value)
                    offsets = value.translation
                })
                    .onEnded({ _ in
                            withAnimation(.spring()){
                                offsets = .zero
                            }
                    }))
           
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
