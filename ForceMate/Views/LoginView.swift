import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = RegisterViewModel()
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                    .frame(height: geometry.size.height * 0.3) // Adjust the percentage as needed
                Text("Welcome")
                    .foregroundColor(.black)
                    .font(.custom("CopperplateGothicBold", size: 30)).foregroundColor(.myColor).bold()
                Spacer()
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
//            Form{
//                TextField("Name",text:$viewModel.name)
//                TextField("Email",text:$viewModel.email)
//                SecureField("Password",text:$viewModel.password )
//                
//            }
        }
    }
}

#Preview {
    LoginView()
}
