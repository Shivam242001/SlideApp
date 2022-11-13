//
//  News.swift
//  TinderClone
//
//  Created by Shivam Nanda on 11/13/22.
//

import SwiftUI

struct News: View {
    @StateObject var data = SpaceAPI()
    @State private var opac = 0.0
    
    var body: some View {
        NavigationView {
            VStack {
                NewsView()
                    .opacity(opac)
            }
            .environmentObject(data)
            .onAppear {
                data.getData()
                
                withAnimation(.easeIn(duration: 2)) {
                    opac = 1.0
                }
            }
            .navigationTitle("News")
        }
    }
}


struct News_Previews: PreviewProvider {
    static var previews: some View {
        News()
    }
}
