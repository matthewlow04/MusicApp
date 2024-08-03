//
//  CreateUsernameView.swift
//  MusicApp
//
//  Created by Matthew Low on 2024-08-03.
//

import SwiftUI

struct CreateUsernameView: View {
    
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: RegistrationViewModel
    
    var body: some View {
        VStack(spacing: 12){
            Text("Create a username")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("You'll use this username to sign into your account")
                .font(.footnote)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            TextField("Username", text: $viewModel.username)
                .textInputAutocapitalization(.none)
                .modifier(TextFieldModifier())
            
            NavigationLink(destination: CreatePasswordView()) {
                Text("Next")
                    .modifier(CreateAccountButtonModifier())
            }
            .disabled(viewModel.username.isEmpty)
            .opacity(viewModel.username.isEmpty ? 0.3 : 1)
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
    CreateUsernameView()
}


#Preview {
    CreateUsernameView()
}
