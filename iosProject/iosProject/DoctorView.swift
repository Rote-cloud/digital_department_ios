import SwiftUI

struct DoctorInfo: Identifiable {
    var id = UUID()
    let image: String
    let name: String
    let speciality: String
    let location: String
    let grade: String
    let beginWork: String
}

struct DoctorView: View {
    var doctors = [DoctorInfo(image: "image1",
                    name: "Dr. Joseph Brostito",
                    speciality: "Dental Specialist",
                    location: "1.2 KM",
                    grade: "4,8 (120 Reviews)",
                    beginWork: "Open at 17.00"),
                DoctorInfo(image: "image2",
                           name: "Dr. Imran Syahir",
                    speciality: "General Doctor",
                    location: "1.2 KM",
                    grade: "4,8 (120 Reviews)",
                    beginWork: "Open at 17.00")]

    var body: some View {
        VStack(alignment: .leading, spacing: SizeManager.indent16) {
            HStack() {
                Text("Near Doctor")
                  .font(
                    Fonts.nearDoctor
                  )
                  .foregroundColor(CustomColors.black)

            }
            .padding(0)
            
            ForEach(doctors) { doctor in
                VStack(alignment: .leading, spacing: SizeManager.indent12) {
                    VStack(alignment: .center, spacing: SizeManager.smallIndent) {
                    HStack(alignment: .center) {
                          // Space Between
                        HStack(alignment: .top, spacing: SizeManager.indent10) {
                              ZStack {

                                        Rectangle()
                                          .foregroundColor(.clear)
                                          .frame(width: SizeManager.doctorIconSize, height: SizeManager.doctorIconSize)
                                          .background(
                                            Image(doctor.image)
                                                  .resizable()
                                                  .aspectRatio(contentMode: .fill)
                                                  .frame(width: SizeManager.doctorIconSize ,height: SizeManager.doctorIconSize)
                                                  .clipped()
                                                  .background(.white)
                                                  .clipShape(Circle())
                                          )

                              }.frame(width: SizeManager.doctorIconSize, height: SizeManager.doctorIconSize)

                                                 VStack(alignment: .leading, spacing: SizeManager.indent10) {
                                Text(doctor.name)
                                  .font(
                                    Fonts.cardName
                                  )
                                  .foregroundColor(CustomColors.black)

                                Text(doctor.speciality)
                                                         .font(Fonts.cardPost)
                                                         .foregroundColor(CustomColors.grey)
                            }
                            .padding(0)
                        }
                        .padding(0)

                          Spacer()
                          // Alternative Views and Spacers
                        HStack(alignment: .center, spacing: SizeManager.indent8) {
                            Image("location")
                                .frame(width: SizeManager.indent16, height: SizeManager.indent16)

                            Text(doctor.location)
                                .font(Fonts.cardPost)
                                .foregroundColor(CustomColors.grey)
                        }
                        .padding(0)
                    }
                    .padding(0)
                    .frame(alignment: .center)

                    Divider()
                    .frame(minHeight: 0, maxHeight: 0)
                    .overlay(
                        Rectangle()
                            .stroke(.white.opacity(0.15), lineWidth: 1)
                    )
                    .background(CustomColors.blue)


                        HStack(alignment: .top, spacing: SizeManager.indent12) {
                            HStack(alignment: .center, spacing: SizeManager.indent6) {
                            Image("clock")
                                    .frame(width: SizeManager.smallIconTimeSize, height: SizeManager.smallIconTimeSize)
                                    .foregroundColor(CustomColors.yellow)
                            
                            Text(doctor.grade)
                                    .font(Fonts.details)
                                    .foregroundColor(CustomColors.yellow)
                        }
                        .padding(0)
                        //.frame(maxWidth: .infinity, alignment: .leading)

                            HStack(alignment: .center, spacing: SizeManager.indent6) {
                            Image("clock")
                            .frame(width: SizeManager.smallIconTimeSize, height: SizeManager.smallIconTimeSize)
                            .foregroundColor(CustomColors.blue)
                            
                            Text(doctor.beginWork)
                                    .font(Fonts.details)
                                    .foregroundColor(CustomColors.blue)
                        }
                        .padding(0)
                        .frame(maxWidth: .infinity, alignment: .center)
                    }
                    .padding(0)
                    .frame(alignment: .topLeading)
                }
                .padding(.horizontal, SizeManager.indent16)
                .padding(.vertical, SizeManager.smallIndent)
                .background(.white)
                .cornerRadius(12)
                .shadow(color: CustomColors.shadow
                .opacity(0.04), radius: 10, x: 2, y: 12)
                }
                .padding(0)
            }
        }
        .padding(0)
        //.frame()
    }
}
