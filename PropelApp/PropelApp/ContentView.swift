//
//  ContentView.swift
//  PropelApp
//
//  Created by Brian Chukwuisiocha on 8/2/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Propel App")
                .font(.system(size: 90))
                .fontWeight(.black)
                .foregroundStyle(.teal.gradient)
            
            ZStack {
                Circle()
                    .fill(LinearGradient(colors:
                                            [Color("ColorIndigoMedium"),Color("ColorSalmonLight")],startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 600, height: 600)
                Image("image-1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                .frame(width: 600.0, height: 600.0)
            }
            Divider()
            Button{
                
            } label: {
                Text("Start learning!")
                    .font(.system(size: 40))
                    .font(.title2)
                    .fontWeight(.heavy)
            }
            .cornerRadius(100)
            .padding(.vertical)
            .padding(.horizontal, 30)
            .buttonStyle(.borderedProminent)
            .tint(.orange)
            
            
        }
        .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
