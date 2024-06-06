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
                    Text("Mate")
                        .foregroundColor(.myColor)
                }
                .bold()
                .font(.system(size: 30))
                .padding(.top)
                
                Spacer()
            }
            .offset(CGSize(width: 10.0, height: -350))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
