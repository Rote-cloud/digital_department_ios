import SwiftUI

struct HeadView: View {
    var body: some View {
        HStack(alignment: .center) {
            // Space Between
            VStack(alignment: .leading, spacing: 6) {
                Text("Hello,")
                  .font(Font.custom("Poppins", size: 16))
                  .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))

                Text("Hi James")
                  .font(
                        Font.custom("Poppins", size: 20)
                          .weight(.bold)
                  )
                  .foregroundColor(Color(red: 0.05, green: 0.11, blue: 0.2))
            }
            .padding(0)

            Spacer()
            // Alternative Views and Spacers
            Image("Frame")
            .frame(width: 56, height: 56)
        }
        .padding(0)
        .frame(width: 327, alignment: .center)
    }
}
