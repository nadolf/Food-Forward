import SwiftUI

struct SignInView: View {
    @StateObject private var authViewModel = AuthViewModel()
    
    var body: some View {
        VStack{
            Text("Welcome to Food Forward!").font(.title).bold()
            
            TextField("Email", text:$authViewModel.email)
            
            SecureField("Password", text:$authViewModel.password)
            
            Button("Sign In") {
                authViewModel.signIn(email: authViewModel.email, password: authViewModel.password)
            }.alert(isPresented: $authViewModel.showAlert) {
                Alert(title: Text("Message"), message: Text(authViewModel.alertMessage), dismissButton: .default(Text("OK")))}
        }
    }
}

#Preview {
    SignInView()
}
