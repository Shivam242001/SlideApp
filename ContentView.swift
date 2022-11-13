//
//  ContentView.swift
//  TinderClone
//
//  Created by Franck-Stephane Ndame Mpouli on 06/08/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            
    
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.purple, .white, .pink]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack {
                
                
                
                CardsSection()
                    .ignoresSafeArea(.all)
                
                FooterSection()
                
            }
        }

    }
        .navigationBarBackButtonHidden(true)
}
}
  

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}



