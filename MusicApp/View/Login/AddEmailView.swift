//
//  AddEmailView.swift
//  MusicApp
//
//  Created by Matthew Low on 2024-08-03.
//

import SwiftUI

struct AddEmailView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: RegistrationViewModel
    
    var body: some View {
        VStack(spacing: 12){
            Text("Add your email")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("You'll use this email to sign into your account")
                .font(.footnote)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)

            TextField("Email", text: $viewModel.email)
                .textInputAutocapitalization(.none)
                .modifier(TextFieldModifier())
            
            NavigationLink(destination: CreateUsernameView()) {
                Text("Next")
                    .modifier(CreateAccountButtonModifier())
            }
            .disabled(!viewModel.validEmailAddress())
            .opacity(viewModel.validEmail ? 1.0 : 0.3)
            .navigationBarBackButtonHidden()
            .padding(.vertical)
            
            Text("Enter A Valid Email")
                .font(.footnote)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
                .opacity(viewModel.validEmail ? 0 : 1)
      
            
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
    AddEmailView()
}
