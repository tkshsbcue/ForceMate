import SwiftUI

struct LandingPage: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    HStack(spacing: 0) {
                        Image("cf_logo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 50)
                        Text("Force")
                            .foregroundColor(.black)
                            .font(.custom("CopperplateGothicBold", size: 45))
                            .fontWeight(.bold)
                        Text("Mate")
                            .foregroundColor(.myColor)
                            .font(.custom("CopperplateGothicBold", size: 45))
                            .fontWeight(.bold)
                    }
                    .padding(.top)
                    
                    // Spacer()
                }
                .padding(.horizontal)
                
//                Spacer()
//                Spacer()
                
                VStack(spacing: 20) { // Adjust the spacing between buttons as needed
                    
                    NavigationLink(destination: RegisterView()) {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 200, height: 50)
                            .foregroundColor(Color.white)
                            .overlay(
                                Text("New Here")
                                    .foregroundColor(.black).font(.custom("CopperplateGothicBold", size: 20))
                            )
                            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 2) // Add shadow effect
                    }
                    .buttonStyle(PlainButtonStyle())

                    NavigationLink(destination: LoginView()) {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 200, height: 50)
                            .foregroundColor(Color.white)
                            .overlay(
                                Text("Login In")
                                    .foregroundColor(.black).font(.custom("CopperplateGothicBold", size: 20)).bold()
                            )
                            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 2) // Add shadow effect
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}



//struct LoginView: View {
//    var body: some View {
//        Text("Welcome to the Login page!")
//            .font(.largeTitle)
//            .foregroundColor(.black)
//    }
//}

#Preview {
    LandingPage()
}
