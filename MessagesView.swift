//
//  MessagesView.swift
//  TinderClone
//
//  Created by Shivam Nanda on 11/12/22.
//

import SwiftUI

struct MessagesView: View {
    @StateObject var messageManager = MessagesManager()
    var body: some View {
        VStack {
                VStack {
                       
                       ScrollViewReader { proxy in
                           ScrollView {
                               ForEach(messageManager.messages, id: \.id) { message in
                                   MessageBubble(message: message)
                               }
                           }
                           .padding(.top, 10)
                           .background(.white)
                           .cornerRadius(30, corners: [.topLeft, .topRight]) // Custom cornerRadius modifier added in Extensions file
                           .onChange(of: messageManager.lastMessageId) { id in
                               // When the lastMessageId changes, scroll to the bottom of the conversation
                               withAnimation {
                                   proxy.scrollTo(id, anchor: .bottom)
                               }
                           }
                       }
                   }
                .background(Color(.clear))
                   
                   MessageField()
                       .environmentObject(MessagesManager())
               }
           }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
