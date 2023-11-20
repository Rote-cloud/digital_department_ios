import SwiftUI

struct SearchView: View {
    
    @State private var search = ""

    var body: some View {
        HStack(alignment: .center, spacing: SizeManager.indent12) {
            Image("search-normal")
                .frame(width: SizeManager.cardIconSize, height: SizeManager.cardIconSize)

            TextField("Search doctor or health issue",
            text: $search)
            .font(Fonts.categories)
            .foregroundColor(CustomColors.grey)
        }
        .padding(SizeManager.indent16)
        .frame(alignment: .leading)
        .background(CustomColors.white)
        .cornerRadius(12)
    }
}
