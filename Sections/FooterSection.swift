//
//  FooterSection.swift
//  TinderClone
//
//  Created by Franck-Stephane Ndame Mpouli on 19/02/2021.
//

import SwiftUI

struct FooterSection: View {
    @State var isModal:Bool =  false
    var body: some View {
        HStack(spacing:0) {


            
       
            NavigationLink(destination: tableHashtags()){
                Image("chat")
                    .resizable()
                    .frame(width: 65.0, height: 65.0)
                
            
                
            }
            NavigationLink(destination: News()){
                Image("news")
                    .resizable()
                    .frame(width: 65.0, height: 65.0)
            
                
            }
            
            
   
                
//                Button("New") {
//                    Image("super_like")
//                    self.isModal = true
//                }.sheet(isPresented: $isModal, content: {
//                    MessagesView()
//                })

                
            

        }
    }
}

struct FooterSection_Previews: PreviewProvider {
    static var previews: some View {
        FooterSection()
    }
}
