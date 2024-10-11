//
//  EntitySignUpView.swift
//  Food Forward
//
//  Created by Nadolf Tagoe on 9/27/24.
//

import SwiftUI

struct EntitySignUpView: View {
    @StateObject private var authViewModel = AuthViewModel()
    @State private var selectedEntityType: String = ""
    var body: some View {
        Text("Create Account")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .bold()
        //Profile Photo Section
        
        Button("Change Profile Picture"){
            //Change Profile Photo
        }
        
        VStack{
            TextField("Name", text: $authViewModel.name)
            
            TextField("Email", text: $authViewModel.email)
            
            TextField("Password", text: $authViewModel.password)
            
            TextField("Confirm Password", text: $authViewModel.confirmPassword)
            
            TextField("Phone Number", text: $authViewModel.phoneNumber)
                .keyboardType(.phonePad)
            
            Picker("Establishment Type", selection: $selectedEntityType){
                Text("Grocery Store").tag("Grocery Store")
                Text("Resturant").tag("Resturant")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            TextField("Bio",text: $authViewModel.name)
            
        } .padding()
        
        
        Button("Create Account"){}
            .buttonStyle(BorderedProminentButtonStyle())

    }
}

#Preview {
    EntitySignUpView()
}
