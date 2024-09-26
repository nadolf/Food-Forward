import SwiftUI
import Combine
import Foundation

class AuthViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var confirmPassword: String = ""
    @Published var phoneNumber: String = ""
    @Published var address: String = ""
    @Published var accountType: String = ""
    
    @Published var alertMessage: String = ""
    @Published var showAlert: Bool = false
    
    func signUp() {
        if name.isEmpty || email.isEmpty || password.isEmpty || confirmPassword.isEmpty || phoneNumber.isEmpty || address.isEmpty || accountType.isEmpty {
            alertMessage = "Fill out all fields"
            showAlert = true
        }
        else if password != confirmPassword {
            alertMessage = "Password does not match"
            showAlert = true
        }
        else if !isValidEmail(email) {
            alertMessage = "Invalid Email"
            showAlert = true
        }
        else if !isValidPassword(password){
            alertMessage = "Invalid Password"
            showAlert = true
            
        }
        else {
            //Add user to database
        }
    }
    
    func  signIn(email: String, password:String){
        if !isValidEmail(email) {
            alertMessage = "Invalid Email"
            showAlert = true
        }
        else if !isValidPassword(password) {
            alertMessage = "Invalid Password"
            showAlert = true
        }
        else {
            alertMessage = "Signed In!"
            showAlert = true
            //User Signed In
        }
    }
    
    func signOut() {
        //pass
    }
    
    private func isValidEmail(_ email: String) -> Bool {
        //Validate email
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailPredicate.evaluate(with: email)
        
    }
    
    private func isValidPassword(_ password: String) -> Bool {
        //Validate password
        let passwordRegEx = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[#$^+=!*()@%&]).{8,}$"
        let passwordPredicate = NSPredicate(format:"SELF MATCHES %@", passwordRegEx)
        return passwordPredicate.evaluate(with: password)
    }
}
