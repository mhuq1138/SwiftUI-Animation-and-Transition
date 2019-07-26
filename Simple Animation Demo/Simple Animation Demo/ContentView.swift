//
//  ContentView.swift
//  Simple Animation Demo
//
//  Created by Mazharul Huq on 7/24/19.
//  Copyright © 2019 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var offset = CGSize(width: 0, height: 0)
    @State var color = Color.blue
    @State var scale: Length = 1.0
    
    @State var moveFlag = true
    @State var scaleFlag = true
    
    var body: some View {
        VStack{
            Circle()
               .fill(self.color)
               .frame(width: 50, height: 50, alignment: .center)
               .offset(self.offset)
               .animation(.easeIn(duration: 3.0))
               
            Button("Move Circle"){
                if self.moveFlag{
                   self.offset = CGSize(width: 150, height: -150)
                   self.color = .red
                    self.moveFlag = false
                }
                else{
                    self.offset = CGSize(width: 0, height: 0)
                    self.color = .blue
                    self.moveFlag = true
                }
            }.padding(.bottom, 20)
            Button("Resize Me"){
                if self.scaleFlag {
                    self.scale += 2
                    self.scaleFlag = false
                }
                else{
                    self.scale -= 2
                    self.scaleFlag = true
                }
            }.scaleEffect(self.scale)
             .animation(.easeOut(duration: 5))
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
