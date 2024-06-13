import SwiftUI

struct LandingPage: View {
    @State private var centerPointIndex = 0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    let oneColor = [
        Color(hue: 0.0, saturation: 0.0, brightness: 0.95), // Very light grey
        Color(hue: 0.0, saturation: 0.0, brightness: 0.85), // Lighter grey
        Color(hue: 0.0, saturation: 0.0, brightness: 0.75), // Light grey
        Color(hue: 0.0, saturation: 0.0, brightness: 0.65), // Medium grey
        Color(hue: 0.0, saturation: 0.0, brightness: 0.55), // Slightly darker grey
        Color(hue: 0.0, saturation: 0.0, brightness: 0.45), // Dark grey
        Color(hue: 0.0, saturation: 0.0, brightness: 0.95)  // Very light grey again
    ]
    
    let edgePoints: [UnitPoint] = [.top, .topTrailing, .trailing, .bottomTrailing, .bottom, .bottomLeading, .leading, .topLeading]
    
    var body: some View {
        NavigationView {
            ZStack {
                Rectangle()
                    .fill(AngularGradient(gradient: Gradient(colors: oneColor),
                                          center: edgePoints[centerPointIndex]))
                    .edgesIgnoringSafeArea(.all)
                
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
                    }
                    .padding(.horizontal)
                    
                    VStack(spacing: 20) { // Adjust the spacing between buttons as needed
                        NavigationLink(destination: RegisterView()) {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 200, height: 50)
                                .foregroundColor(Color.white.opacity(0.3)) // Make the background transparent
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
                                .foregroundColor(Color.white.opacity(0.3)) // Make the background transparent
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
        .onReceive(timer) { _ in
            withAnimation {
                centerPointIndex = (centerPointIndex + 1) % edgePoints.count
            }
        }
    }
}

#Preview {
    LandingPage()
}
