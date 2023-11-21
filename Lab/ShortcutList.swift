//
//  Shortcut.swift
//  Lab
//
//  Created by Daniil Bugay on 20.11.2023.
//

import SwiftUI

struct ShortcutList: View {
    var body: some View {
        VStack(spacing: 8) {
            HStack(spacing: 13) {
                ShortcutItem(
                    imageName: "CovidIcon",
                    stringLiteral: "Covid 19"
                )
                ShortcutItem(
                    imageName: "DoctorIcon",
                    stringLiteral: "Doctor"
                )
                ShortcutItem(
                    imageName: "MedicineIcon",
                    stringLiteral: "Medicine"
                )
                ShortcutItem(
                    imageName: "HospitalIcon",
                    stringLiteral: "Hospital"
                )
            }
            .frame(
                minWidth: 0,
                maxWidth: .infinity,
                alignment: .center
            )
        }
    }
}

private struct ShortcutItem: View {
    
    let imageName: String
    let stringLiteral: String
    
    var body: some View {
        VStack(spacing: 8) {
            Image(imageName)
                .padding(24)
                .background(AppColors.gray)
                .clipShape(.circle)
            Text(LocalizedStringResource(stringLiteral: stringLiteral))
                .font(.system(size: 16))
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    ShortcutList()
}
