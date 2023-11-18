import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                VStack(alignment: .leading, spacing: 6) {
                    Text(LocalizedStringResource(stringLiteral: "Hello"))
                        .font(.system(size: 16))
                        .foregroundStyle(.gray)
                    Text(LocalizedStringResource(stringLiteral: "Hi James"))
                        .font(.system(size: 20))
                        .bold()
                }
                Spacer()
                Image("LogoIcon")
            }
            DoctorCard()
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
