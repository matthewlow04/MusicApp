//
//  CompleteSignUpView.swift
//  MusicApp
//
//  Created by Matthew Low on 2024-08-03.
//

import SwiftUI

struct CompleteSignUpView: View {
 
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: RegistrationViewModel
    
    var body: some View {
        VStack(spacing: 12){
            Spacer()
            Text("Welcome to Music App, \(viewModel.username)")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
                .padding(.horizontal)
                .multilineTextAlignment(.center)
            
            Text("Click below to complete registration and start using music app")
                .font(.footnote)
       
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            Button {
                Task{
                    try await viewModel.createUser()
                }
            } label: {
                Text("Complete Sign Up")
                    .modifier(CreateAccountButtonModifier())
            }
            .navigationBarBackButtonHidden()
            .padding(.vertical)
            
            Spacer()

        }
        .toolbar{
            ToolbarItem(placement: .topBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
            
        }
    }
}

#Preview {
    CompleteSignUpView()
}
