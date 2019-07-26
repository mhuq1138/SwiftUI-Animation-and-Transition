//
//  ContentView.swift
//  Rotation with Animation
//
//  Created by Mazharul Huq on 7/24/19.
//  Copyright © 2019 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var angleText = 0.0
    @State var color:Color = .red
    @State var angleRect = 0.0
       
    var body: some View {
           VStack{
                Text("Hello World")
                   .font(.largeTitle)
                   .foregroundColor(self.color)
                   .rotationEffect(.degrees(self.angleText))
                   .animation(.linear)
                   .padding(.bottom, 80)
                Button("Rotate Text"){
                    self.angleText += 30.0
                    if self.color == Color.red{
                        self.color = .blue
                    }else{
                        self.color = .red
                    }
                }.padding(.bottom, 50)
            
            Rectangle()
               .fill(Color.blue)
               .frame(width: 150, height: 100, alignment: .center)
               .rotation3DEffect(.degrees(self.angleRect), axis: (x: 1.0, y: 0.0, z: 1.0))
               .animation(.easeIn)
               .padding(.bottom, 80)
            Button("Rotate Rect"){
                self.angleRect += 30.0
            }
            
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
