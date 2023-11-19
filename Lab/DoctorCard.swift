import Foundation
import SwiftUI

struct DoctorCard: View {
    var body: some View {
        VStack(spacing: 16) {
            HStack(spacing: 12) {
                Image("DoctorImage")
                    .background(.white)
                    .clipShape(.circle)
                VStack(alignment: .leading, spacing: 8) {
                    Text(LocalizedStringResource(stringLiteral: "Dr. Imran Syahir"))
                        .font(.system(size: 16))
                        .bold()
                        .foregroundStyle(.white)
                    Text(LocalizedStringResource(stringLiteral: "General Doctor"))
                        .font(.system(size: 14))
                        .foregroundStyle(AppColors.lightBlue)
                }
                Spacer()
                Image("ForwardArrowIcon")
            }
            Divider()
                .background(.white)
            HStack {
                Image("CalendarIcon")
                Text(LocalizedStringResource(stringLiteral: "DoctorDate"))
                    .font(.system(size: 12))
                    .foregroundStyle(.white)
                Spacer()
                Image("ClockIcon")
                Text(LocalizedStringResource(stringLiteral: "DoctorTime"))
                    .font(.system(size: 12))
                    .foregroundStyle(.white)
            }
        }
        .padding(20)
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            alignment: .topLeading
        )
        .background(AppColors.blue)
        .cornerRadius(12)
    }
}

#Preview {
    DoctorCard()
}
