import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                HStack(spacing: 0) {
                    Image("cf_logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 50)
                    Text("Force")
                        .foregroundColor(.black)
                        .font(.custom("CopperplateGothicBold", size: 30))
                        .fontWeight(.bold)
                    Text("Mate")
                        .foregroundColor(.myColor)
                        .font(.custom("CopperplateGothicBold", size: 30))
                        .fontWeight(.bold)
                }
                .padding(.top)
                
                Spacer()
            }
            .padding(.horizontal)
            
            Spacer()
            Spacer()
            
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity) 
    }
}

#Preview {
    ContentView()
}
