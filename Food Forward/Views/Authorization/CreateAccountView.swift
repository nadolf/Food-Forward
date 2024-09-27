import SwiftUI

struct CreateAccountView: View {
    @State private var selectedAccountType: String? = nil
    
    var body: some View {
        // Insert Logo Image Here
        NavigationView {
            VStack {
                // Create Account button
                    Text("Create your account")
                        .font(.title)
                        .bold()
                        .padding()
                
                HStack{
                    // Already have an account section
                    Text("Already have an account?")
                    
                    // Sign In NavigationLink
                    NavigationLink(destination: SignInView()) {
                        Text("Sign In")
                            .foregroundColor(.blue)
                            .bold()
                    }
                }

                // Individual or Organizations button
                HStack {
                    Image(systemName: "briefcase.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.brown)
                        .padding()

                    VStack(alignment: .leading) {
                        Text("Individual or Organizations")
                            .font(.headline)
                            .foregroundColor(.primary)

                        Text("For Individuals or Organizations usage")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            .lineLimit(1)
                    }
                    .padding()
                }
                .frame(width: 350)
                .background(selectedAccountType == "individual" ? Color.gray.opacity(0.3) : Color.white)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 1)
                )
                .onTapGesture {
                    selectedAccountType = "individual"
                }
                .padding()
                
                // Restaurants or Grocery Stores button
                HStack {
                    Image(systemName: "person.3.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.brown)
                        .padding()

                    VStack(alignment: .leading) {
                        Text("Restaurants or Grocery Stores")
                            .font(.headline)
                            .foregroundColor(.primary)

                        Text("For restaurants or grocery stores usage")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            .lineLimit(1)

                    }
                    .padding()
                }
                .frame(width: 350)
                .background(selectedAccountType == "entity" ? Color.gray.opacity(0.3) : Color.white)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 1)
                )
                .onTapGesture {
                    selectedAccountType = "entity"
                }
                .padding()

                // Continue button
                Button("Continue") {
                    if selectedAccountType == "individual" {
                        //Navigate to Individual/Organization Sign Up page
                    }
                    else if selectedAccountType == "entity" {
                        //Navigate to Individual/Organization Sign Up page
                    }
                    else {
                        // Show an "Select on tof the options" Alert
                    }
                }
                .padding()
                .disabled(selectedAccountType == nil ? true : false)
                .frame(width: 350, height: 50)
                .background(selectedAccountType == nil ? Color.white : Color.brown)
                .foregroundColor(selectedAccountType == nil ? .gray : .white)
                .cornerRadius(10)
            }        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    CreateAccountView()
}
