import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("User Information").font(.headline)) {
                        TextField("Name", text: $viewModel.name)
                            .autocapitalization(.words)
                            .disableAutocorrection(true)
                        TextField("Email", text: $viewModel.email)
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                        SecureField("Password", text: $viewModel.password)
                    }
                }
                .padding(.top, 20)
                
                Button(action: {
                    viewModel.register()
                }) {
                    Text("Register")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding([.leading, .trailing], 20)
                .padding(.top, 20)
            }
            .navigationTitle("Register")
    
            
        }
    }
}

#Preview {
    RegisterView()
}
