//
//  DoctorsCards.swift
//  Lab
//
//  Created by Daniil Bugay on 20.11.2023.
//

import SwiftUI

struct NearDoctorsCards: View {
    var body: some View {
        VStack(spacing: 12) {
            NearDoctorCard(
                doctorPhoto: "Doctor1",
                doctorName: "FirstName",
                doctorSpecialization: "FirstSpecialization",
                distance: "FirstDistance",
                review: "FirstRate",
                workingTime: "FirstTime"
            )
            NearDoctorCard(
                doctorPhoto: "DoctorImage",
                doctorName: "Dr. Imran Syahir",
                doctorSpecialization: "General Doctor",
                distance: "FirstDistance",
                review: "FirstRate",
                workingTime: "SecondTime"
            )
        }
    }
}

private struct NearDoctorCard: View {
    
    let doctorPhoto: String
    let doctorName: String
    let doctorSpecialization: String
    let distance: String
    let review: String
    let workingTime: String
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 20) {
                HStack(spacing: 16) {
                    Image(doctorPhoto)
                        .background(.white)
                        .clipShape(.circle)
                    VStack(alignment: .leading, spacing: 8) {
                        Text(LocalizedStringResource(stringLiteral: doctorName))
                            .font(.system(size: 16))
                            .bold()
                            .foregroundStyle(.black)
                        Text(LocalizedStringResource(stringLiteral: doctorSpecialization))
                            .font(.system(size: 14))
                            .foregroundStyle(AppColors.lightBlue)
                    }
                    Spacer()
                    HStack() {
                        Image("LocationIcon")
                        Text(LocalizedStringResource(stringLiteral: distance))
                            .font(.system(size: 14))
                            .foregroundStyle(.gray)
                    }
                }
                Divider()
                    .background(AppColors.gray)
                HStack {
                    Image("YellowClockIcon")
                    Spacer()
                        .frame(width: 6)
                    Text(LocalizedStringResource(stringLiteral: review))
                        .font(.system(size: 12))
                        .foregroundStyle(AppColors.yellow)
                    Spacer()
                        .frame(width: 24)
                    Image("BlueClockIcon")
                    Spacer()
                        .frame(width: 6)
                    Text(LocalizedStringResource(stringLiteral: workingTime))
                        .font(.system(size: 12))
                        .foregroundStyle(.blue)
                }
                .padding(.horizontal, 4)
            }
            .padding(.horizontal, 24)
            .padding(.vertical, 20)
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            alignment: .topLeading
        )
        .background(.white)
        .cornerRadius(24)
        .shadow(color: .gray.opacity(0.1), radius: 5)
    }
}

#Preview {
    NearDoctorsCards()
}
