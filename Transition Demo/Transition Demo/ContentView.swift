//
//  ContentView.swift
//  Transition Demo
//
//  Created by Mazharul Huq on 7/26/19.
//  Copyright © 2019 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var showView = false
    
    var body: some View {
        VStack{
            Spacer()
            if showView{
               Text("Hello World")
                  .font(.largeTitle)
                  .foregroundColor(.white)
                  .frame(width: 200, height: 150, alignment: .center)
                  .background(Color.red)
                  .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .top)))
            }
            Spacer()
            Button("Show View"){
                withAnimation{
                   self.showView.toggle()
                }
            }.padding(.bottom, 80)
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
