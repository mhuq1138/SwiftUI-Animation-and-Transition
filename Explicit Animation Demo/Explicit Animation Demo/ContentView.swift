//
//  ContentView.swift
//  Explicit Animation Demo
//
//  Created by Mazharul Huq on 7/25/19.
//  Copyright © 2019 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var x = -100.0
    @State var y = 0.0
    
    var body: some View {
        VStack{
            Circle()
                .fill(Color.red)
                .frame(width: 50, height: 50, alignment: .center)
                .offset(CGSize(width: -100.0, height: self.y))
                .padding(.bottom, 100)
            Circle()
                .fill(Color.green)
                .frame(width: 50, height: 50, alignment: .center)
                .offset(CGSize(width: self.x, height: 0.0))
                .padding(.bottom, 20)
            Button("Move"){
                withAnimation(.interpolatingSpring(mass: 2.0, stiffness: 0.8, damping: 0.5, initialVelocity: 0.5), {self.x = 100.0
                    self.y = 200.0
                })
            }.padding(.bottom, 50)
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
