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
                .frame(height: 20)
            SearchCard()
            Spacer()
                .frame(height: 24)
            ShortcutList()
            Spacer()
                .frame(height: 32)
            Text(LocalizedStringResource(stringLiteral: "Near Doctor"))
                .font(.system(size: 16))
                .bold()
            Spacer()
                .frame(height: 16)
            NearDoctorsCards()
           
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
