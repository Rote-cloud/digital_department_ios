import SwiftUI

struct ImageInfo: Identifiable {
    var id = UUID()
    
    let image: String
    let name: String
}

struct InformationView: View {
    let imageList = [
        ImageInfo(image: "sun", name: "Covid 19"),
                    ImageInfo(image: "profile-add", name: "Doctor"),
                    ImageInfo(image: "link", name: "Medicine"),
                    ImageInfo(image: "hospital", name: "Hospital")
    ]

    var body: some View {
        HStack(alignment: .top, spacing: SizeManager.indent13) {
            ForEach(imageList) { item in
                VStack(alignment: .center, spacing: SizeManager.indent8) {
                    HStack(alignment: .top, spacing: SizeManager.indent10) {
                            Image(item.image)
                            .frame(width: SizeManager.cardIconSize, height: SizeManager.cardIconSize)

                    }.padding(SizeManager.stdIndent)
                        .background(CustomColors.white)
                            .cornerRadius(100)


                        Text(item.name)
                        .font(Fonts.categories)
                        .foregroundColor(CustomColors.grey)
                    }
                    .padding(0)
            }
            }
            .padding()
    }
}
