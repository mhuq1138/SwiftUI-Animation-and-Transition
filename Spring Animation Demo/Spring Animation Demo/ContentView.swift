//
//  ContentView.swift
//  Spring Animation Demo
//
//  Created by Mazharul Huq on 7/25/19.
//  Copyright © 2019 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var defaultX = -100.00
    @State var springX = -100.0
    @State var interpolatingX = -100.0
    
    var body: some View {
        VStack{
            Circle()
               .fill(Color.red)
               .frame(width: 50, height: 50, alignment: .center)
               .offset(CGSize(width: self.defaultX, height: 0.0))
               .animation(.spring())
               .padding(.bottom, 20)
            
            Button("Move"){
                self.defaultX += 200
            }.padding(.bottom, 50)
            
            Circle()
                .fill(Color.blue)
                .frame(width: 50, height: 50, alignment: .center)
                .offset(CGSize(width: self.springX, height: 0.0))
                .animation(.spring(response: 3, dampingFraction: 0.3, blendDuration: 0.0))
                .padding(.bottom, 20)
                        
                Button("Move"){
                    self.springX += 200
                }.padding(.bottom, 50)
            
            Circle()
                .fill(Color.green)
                .frame(width: 50, height: 50, alignment: .center)
                .offset(CGSize(width: self.interpolatingX, height: 0.0))
                .animation(.interpolatingSpring(mass: 2.0, stiffness: 0.6, damping: 0.2, initialVelocity: 1.0))
                .padding(.bottom, 20)
                                    
                Button("Move"){
                    self.interpolatingX += 200
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
