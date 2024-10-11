//
//  IndividualSignUpView.swift
//  Food Forward
//
//  Created by Nadolf Tagoe on 9/27/24.
//

import SwiftUI

struct IndividualSignUpView: View {
    @StateObject private var authViewModel = AuthViewModel()
    var body: some View {
        Text("Create Account")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .bold()
        // Profile Photo section
        Button("Change Profile Picture"){
            
        }
        
        VStack{
            TextField("Name", text: $authViewModel.name)
            TextField("Email", text: $authViewModel.email)
            TextField("Password", text: $authViewModel.password)
            TextField("Confirm Password", text: $authViewModel.confirmPassword)
            TextField("Address", text: $authViewModel.address)
            TextField("Phone Number", text: $authViewModel.phoneNumber)
                .keyboardType(.phonePad)
        }.padding()
        
        
        Button("Create Account"){
            //Create Account
        }
        .buttonStyle(.borderedProminent)
        
        
    }
}

#Preview {
    IndividualSignUpView()
}
