//
//  Login.swift
//  TinderClone
//
//  Created by Archit Thakur on 11/12/22.
//

import SwiftUI
import FirebaseFirestore



    struct Login: View {
        @State private var username = ""
    //    @State private var email = ""
        @State private var password = ""

        @State private var wrongUserName = 0
        @State private var wrongPassword = 0
        @State private var showingLoginScreen = false
        @State private var fullName = ""
        
        
        
        var body: some View {
            NavigationView{
                ZStack{
                    Color.blue
                        .ignoresSafeArea()
                    Circle()
                        .scale(1.8)
                        .foregroundColor(.white.opacity(0.15))
                    Circle()
                        .scale(1.4)
                        .foregroundColor(.white)
    //                Circle()
    //                    .scale(1.0)
    //                    .foregroundColor(.white)
                    
                    VStack {
    //                    Text("Login").font(.largeTitle)
    //                        .bold()
    //                        .padding()
    //
    //                    TextField("FullName", text: $fullName)
    //                        .padding()
    //                        .frame(width: 300, height: 50)
    //                        .background(Color.black.opacity(0.07))
    //                        .cornerRadius(10)
                        
    //                    TextField("Email ID", text: $email)
    //                        .padding()
    //                        .frame(width: 300, height: 50)
    //                    .background(Color.black.opacity(0.07))
    //                    .cornerRadius(10)
                        
                        TextField("UserName ID", text: $username)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.black.opacity(0.07))
                            .cornerRadius(10)

                        TextField("Password", text: $password)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.black.opacity(0.07))
                            .cornerRadius(10)
        
                        
                        Divider().frame(width: 300)
                            .background(Color.white)
                            .cornerRadius(10)
                        
                        Button(action: authenticate) {
                           Text("Log In")
                        }
                        .foregroundColor(.white)
                        .frame(width: 300, height: 50)
                        .background(Color.purple)
                        .cornerRadius(10)
                    }
                    
                    NavigationLink(destination: Text("You are logged in @\(username)"), isActive: $showingLoginScreen) {
                        
                        EmptyView()
                    }
            
                    }
                    
                    
                        
                    
                }
    //            navigationBarHidden(true)
            }
        func authenticate(){
            let db = Firestore.firestore()

         
            let docRef = db.collection("members").document()

          print(docRef)
            
            
//            docRef.setData(["fulllName": fullName,
//                            "EmailID":email,
//                            "UserNameID":username,
//                            "Password":password]) { error in
//                if let error = error {
//                    print("Error writing document: \(error)")
//                } else {
//                    print("Document successfully written!")
//                }
            }
        }



struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
