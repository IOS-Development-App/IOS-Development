//
//  Registration.swift
//  App
//
//  Created by Muin on 12/27/23.
//
//zaid
import SwiftUI

struct Registration: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
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
                        Text("Create Account")
                            .font(.largeTitle)
                            .bold()
                            .padding()
                        TextField("First Name", text: $firstName)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                        
                        TextField("Last Name", text: $lastName)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                        
                        TextField("Email ID", text: $email)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                        
                        TextField("Create Username", text: $username)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                        
                        SecureField("Create Password", text: $password)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                    
                       Spacer().frame(height: 20)
                        
                        Button("Sign Up") {
                            signUpSuccess = true // Set signUpSuccess to true on button tap
                            
                        }
                        .foregroundColor(.white)
                        .font(Font.custom("Inder", size: 25))
                        .frame(width: 229, height: 54)
                        .background(.black)
                        .cornerRadius(30)
                    
                    NavigationLink {
                        Login()
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        HStack(spacing: 3){
                            Text("Already have an account?")
                            Text("Sign in")
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
    Registration()
}
