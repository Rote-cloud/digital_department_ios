import SwiftUI

struct CardView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            HStack(alignment: .center) {
                  // Space Between
                  HStack(alignment: .center, spacing: 12) {
                          
                    ZStack {

                              Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 48, height: 48)
                                .background(
                                      Image("image1")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 48, height: 48)
                                        .clipped()
                                        .background(.white)
                                        .clipShape(Circle())
                                )

                      }.frame(width: 48, height: 48)
            
                    VStack(alignment: .leading, spacing: 8) {
                    Text("Dr. Imran Syahir")
                      .font(
                            Font.custom("Poppins", size: 16)
                              .weight(.bold)
                      )
                      .foregroundColor(.white)

                    Text("General Doctor")
                      .font(Font.custom("Poppins", size: 14))
                      .foregroundColor(Color(red: 0.8, green: 0.88, blue: 1))
                    }
                    .padding(0)
                }
                .padding(0)

                  Spacer()

                  // Alternative Views and Spacers
                HStack(alignment: .center, spacing: 0) {
                    Image("arrow-right")
                    .frame(width: 24, height: 24)
                }
                .padding(0)
                .frame(width: 24, height: 24, alignment: .center)
            }
            .padding(0)
            .frame(maxWidth: .infinity, alignment: .center)

            Divider()
            .frame(maxWidth: .infinity, minHeight: 0, maxHeight: 0)
            .overlay(
                Rectangle()
                    .stroke(.white.opacity(0.15), lineWidth: 1)
            )
            .background(Color(red: 0.8, green: 0.88, blue: 1))

            HStack(alignment: .top, spacing: 12) {
                HStack(alignment: .center, spacing: 8) {
                    Image("calendar")
                    .frame(width: 16, height: 16)

                    Text("Sunday, 12 June")
                      .font(Font.custom("Poppins", size: 12))
                      .foregroundColor(.white)
                }
                .padding(0)
                .frame(maxWidth: .infinity, alignment: .leading)

                HStack(alignment: .center, spacing: 8) {
                    Image("clock")
                    .frame(width: 16, height: 16)
                    .foregroundColor(.white)

                    Text("11:00 - 12:00 AM")
                      .font(Font.custom("Poppins", size: 12))
                      .foregroundColor(.white)
                }
                .padding(0)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(0)
            .frame(maxWidth: .infinity, alignment: .topLeading)
        }
        .padding(20)
        .frame(width: 327, alignment: .top)
        .background(Color(red: 0.28, green: 0.58, blue: 1))
        .cornerRadius(12)
    }
}
