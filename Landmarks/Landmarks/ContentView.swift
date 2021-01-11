//
//  ContentView.swift
//  Landmarks
//
//  Created by JaeseopKim on 2021/01/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .leading){
            Text("Hello, world!")
                .font(.title)
                .foregroundColor(.blue)
            HStack {
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                Spacer() // to use the full width of the device
                Text("California")
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
