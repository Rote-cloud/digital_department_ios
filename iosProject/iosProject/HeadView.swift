import SwiftUI

struct HeadView: View {
    var body: some View {
        HStack(alignment: .center) {
            // Space Between
            VStack(alignment: .leading, spacing: SizeManager.indent6) {
                Text("Hello,")
                    .font(Fonts.hello)
                    .foregroundColor(CustomColors.grey)

                Text("Hi James")
                  .font(
                    Fonts.hi
                  )
                  .foregroundColor(CustomColors.black)
            }
            .padding(0)

            Spacer()
            // Alternative Views and Spacers
            Image("Frame")
                .frame(width: SizeManager.headSize, height: SizeManager.headSize)
        }
        .padding(0)
        .frame(alignment: .center)
    }
}
