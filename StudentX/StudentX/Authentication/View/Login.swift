//
//  Login.swift
//  App
//
//  Created by Muin on 12/27/23.
//

import SwiftUI

struct Login: View {

    @State private var username = ""
    @State private var password = ""
    @State private var showingLoginScreen = false
    @State private var signUpSuccess = false //
    @Environment(\.dismiss) var dismiss
    var body: some View {
        
        NavigationView {
            
            
            ZStack{
                Color.blue
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white)
                
                
                VStack{
                        Text("Login")
                            .font(.largeTitle)
                            .bold()
                            .padding()
                        TextField("Username", text: $username)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                        
                        SecureField("Password", text: $password)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                    
                       Spacer().frame(height: 20)
                        
                        Button("Sign In") {
                            signUpSuccess = true // Set signUpSuccess to true on button tap
                            
                            
                        }
                        .foregroundColor(.white)
                        .font(Font.custom("Inder", size: 25))
                        .frame(width: 229, height: 54)
                        .background(.black)
                        .cornerRadius(30)
                    
                    NavigationLink {
                        Registration()
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        HStack(spacing: 3){
                            Text("Dont have an account?")
                            Text("Sign up")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        }
                        .font(.system(size: 14))
                    }
        
                        
                }
                
            
                
            
            .navigationBarItems(trailing: EditButton())
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarTitle("Your Title")
            
        }
            .navigationBarHidden(true)
        }
        
    }
}

#Preview {
    Login()
}
