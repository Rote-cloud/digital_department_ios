import SwiftUI

struct SearchView: View {
    
    @State private var search = ""

    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            Image("search-normal")
            .frame(width: 24, height: 24)

            TextField("Search doctor or health issue",
            text: $search)
              .font(Font.custom("Poppins", size: 15))
              .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))
        }
        .padding(16)
        .frame(width: 327, alignment: .leading)
        .background(Color(red: 0.98, green: 0.98, blue: 0.98))
        .cornerRadius(12)
    }
}
