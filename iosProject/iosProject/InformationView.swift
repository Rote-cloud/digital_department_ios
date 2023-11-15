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
        HStack(alignment: .top, spacing: 13) {
            ForEach(imageList) { item in
                VStack(alignment: .center, spacing: 8) {
                    HStack(alignment: .top, spacing: 10) {
                        Image(item.image)
                        .frame(width: 24, height: 24)

                    }.padding(24)
                        .background(Color(red:0.98, green: 0.98, blue: 0.98))
                        .cornerRadius(100)


                    Text(item.name)
                      .font(Font.custom("Poppins", size: 15))
                      .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))
                }
                .padding(0)
            }
            }
            .padding()
    }
}
