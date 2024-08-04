//
//  LoginView.swift
//  MusicApp
//
//  Created by Matthew Low on 2024-08-03.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewModel()
    var body: some View {
        
        NavigationStack{
            VStack(spacing: 20){
                
                Text("Music App")
                    .font(.largeTitle)
                
                VStack{
                    TextField("Enter your email", text: $viewModel.email)
                        .textInputAutocapitalization(.none)
                        .modifier(TextFieldModifier())

                    SecureField("Enter your password", text: $viewModel.password)
                        .modifier(TextFieldModifier())
                      
                }
                
                Button("Login"){
                    Task{
                        try await viewModel.signIn()
                    }
                }
                .modifier(CreateAccountButtonModifier())
                
                
                NavigationLink {
                    AddEmailView()
                        .navigationBarBackButtonHidden()
                       
                } label: {
                    HStack(spacing: 3){
                        Text("Don't have an account?")
                        
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                }
                .padding(.vertical, 16)
            }
        }
    }
}

#Preview {
    LoginView()
}
