import SwiftUI

struct CardView: View {
    var body: some View {
        VStack(alignment: .center, spacing: SizeManager.indent16) {
            HStack(alignment: .center) {
                  // Space Between
                HStack(alignment: .center, spacing: SizeManager.indent12) {
                          
                    ZStack {

                              Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: SizeManager.doctorIconSize, height: SizeManager.doctorIconSize)
                                .background(
                                      Image("image1")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: SizeManager.doctorIconSize, height: SizeManager.doctorIconSize)
                                        .clipped()
                                        .background(.white)
                                        .clipShape(Circle())
                                )

                    }.frame(width: SizeManager.doctorIconSize, height: SizeManager.doctorIconSize)
            
                    VStack(alignment: .leading, spacing: SizeManager.indent8) {
                    Text("Dr. Imran Syahir")
                      .font(
                        Fonts.cardName
                      )
                      .foregroundColor(.white)

                    Text("General Doctor")
                            .font(Fonts.cardPost)
                            .foregroundColor(CustomColors.lightGrey)
                    }
                    .padding(0)
                }
                .padding(0)

                  Spacer()

                  // Alternative Views and Spacers
                HStack(alignment: .center, spacing: 0) {
                    Image("arrow-right")
                        .frame(width: SizeManager.cardIconSize, height: SizeManager.cardIconSize)
                }
                .padding(0)
                .frame(width: SizeManager.cardIconSize, height: SizeManager.cardIconSize, alignment: .center)
            }
            .padding(0)
            .frame(maxWidth: .infinity, alignment: .center)

            Divider()
            .frame(maxWidth: .infinity, minHeight: 0, maxHeight: 0)
            .overlay(
                Rectangle()
                    .stroke(.white.opacity(0.15), lineWidth: 1)
            )
            .background(CustomColors.lightGrey)

            HStack(alignment: .top, spacing: SizeManager.indent12) {
                HStack(alignment: .center, spacing: 8) {
                    Image("calendar")
                        .frame(width: SizeManager.smallIconSize, height: SizeManager.smallIconSize)

                    Text("Sunday, 12 June")
                        .font(Fonts.details)
                      .foregroundColor(.white)
                }
                .padding(0)
                .frame(maxWidth: .infinity, alignment: .leading)

                HStack(alignment: .center, spacing: 8) {
                    Image("clock")
                        .frame(width: SizeManager.smallIconSize, height: SizeManager.smallIconSize)
                    .foregroundColor(.white)

                    Text("11:00 - 12:00 AM")
                        .font(Fonts.details)
                      .foregroundColor(.white)
                }
                .padding(0)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(0)
            .frame(maxWidth: .infinity, alignment: .topLeading)
        }
        .padding(20)
        .frame(alignment: .top)
        .background(CustomColors.blue)
        .cornerRadius(12)
    }
}
