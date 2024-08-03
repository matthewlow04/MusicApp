//
//  CreatePasswordView.swift
//  MusicApp
//
//  Created by Matthew Low on 2024-08-03.
//

import SwiftUI

struct CreatePasswordView: View {

    @EnvironmentObject var viewModel: RegistrationViewModel
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 12){
            Text("Create a password")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Your password must be at least 6 characters in length")
                .font(.footnote)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            SecureField("Password", text: $viewModel.password)
                .textInputAutocapitalization(.none)
                .modifier(TextFieldModifier())
            
            NavigationLink {
                CompleteSignUpView()
            } label: {
                Text("Next")
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
    CreatePasswordView()
}

