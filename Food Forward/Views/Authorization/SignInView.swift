import SwiftUI

struct SignInView: View {
    @StateObject private var authViewModel = AuthViewModel()
    
    var body: some View {
        NavigationView {
            VStack{
                Text("Welcome to Food Forward!").font(.title).bold()
                
                TextField("Email", text:$authViewModel.email)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .frame(width: 300)
                SecureField("Password", text:$authViewModel.password)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .frame(width: 300)
                
                Button("Sign In"){
                    authViewModel.signIn(email: authViewModel.email, password: authViewModel.password)
                }.alert(isPresented: $authViewModel.showAlert) {
                    Alert(title: Text("Message"), message: Text(authViewModel.alertMessage), dismissButton: .default(Text("OK")))}
                .padding()
                .frame(width: 350, height: 50)
                .background(Color.brown)
                .foregroundColor(.white)
                .cornerRadius(10)
                
                HStack{
                    Text("Don't Have an Account?")
                    NavigationLink(destination: CreateAccountView()){
                        Text("Sign Up")}
                }.padding()
            }}.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    SignInView()
}
