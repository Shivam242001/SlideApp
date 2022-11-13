//
//  TinderClone.swift
//  Slide
//
//  Created by Shivam Nanda on 11/13/22.
//

import SwiftUI
import Firebase

@main
struct SlideApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
           SwiftUIView()
        }
    }
}

