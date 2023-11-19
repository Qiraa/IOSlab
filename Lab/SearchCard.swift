import SwiftUI

struct SearchCard: View {
    @State private var searchQuery: String = ""
    
    var body: some View {
        HStack(spacing: 12) {
            Image("SearchIcon")
            TextField("SearchHint", text: $searchQuery)
        }
        .padding(20)
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            alignment: .topLeading
        )
        .background(AppColors.gray)
        .cornerRadius(12)
    }
}

#Preview {
    SearchCard()
}
