//
//  ContentView.swift
//  LazyVGrid-LazyHGrid
//
//  Created by Famil Mustafayev on 17.08.24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    private var sfsmbol:[String] = ["key.slash.fill", "ev.charger.arrowtriangle.right.fill", "person.fill", "door.french.open", "suv.side.lock.open.fill", "tv.fill", "tv.and.mediabox.fill", "network.slash", "circle.dotted.circle", "photo.badge.plus.fill"]
    
    private var rengler:[Color] = [.red, .purple, .yellow]
   // private var gridItemLayout = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()),GridItem(.flexible())]
   // private var gridItemLayout: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    //private var gridItemLayout: [GridItem] = [GridItem(.fixed(150)), GridItem(.flexible()),GridItem(.fixed(450)), GridItem(.flexible()),GridItem(.fixed(250))]
    private var gridItemLayout: [GridItem] = [GridItem(.fixed(200)), GridItem(.adaptive(minimum: 100)),GridItem(.fixed(250)), GridItem(.adaptive(minimum: 100))]
    var body: some View {
        VStack(spacing: 20.0) {
            Text("Lazy Vertical Grid Test - 1")
            ScrollView(.vertical){
                LazyVGrid(columns: gridItemLayout, alignment: .center, content: {
                    ForEach(0..<100) {
                        Image(systemName: sfsmbol[$0 % sfsmbol.count])
                            .foregroundStyle(.white)
                            .padding()
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50)
                            .background(rengler[$0 % rengler.count]).clipShape(RoundedRectangle(cornerRadius: 25.0))
                    }
                })
            }
            
        }.font(Font.custom("Futura", size: 44))
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
