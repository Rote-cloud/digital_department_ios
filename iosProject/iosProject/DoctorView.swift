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
        VStack(alignment: .leading, spacing: 16) {
            HStack() {
                Text("Near Doctor")
                  .font(
                        Font.custom("Poppins", size: 16)
                          .weight(.semibold)
                  )
                .foregroundColor(Color(red: 0.05, green: 0.11, blue: 0.2))

            }
            .padding(0)
            
            ForEach(doctors) { doctor in
                VStack(alignment: .leading, spacing: 12) {
                VStack(alignment: .center, spacing: 20) {
                    HStack(alignment: .center) {
                          // Space Between
                          HStack(alignment: .top, spacing: 10) {
                              ZStack {

                                        Rectangle()
                                          .foregroundColor(.clear)
                                          .frame(width: 48, height: 48)
                                          .background(
                                            Image(doctor.image)
                                                  .resizable()
                                                  .aspectRatio(contentMode: .fill)
                                                  .frame(width: 48, height: 48)
                                                  .clipped()
                                                  .background(.white)
                                                  .clipShape(Circle())
                                          )

                                }.frame(width: 48, height: 48)

                            VStack(alignment: .leading, spacing: 10) {
                                Text(doctor.name)
                                  .font(
                                        Font.custom("Poppins", size: 16)
                                          .weight(.bold)
                                  )
                                  .foregroundColor(Color(red: 0.05, green: 0.11, blue: 0.2))

                                Text(doctor.speciality)
                                  .font(Font.custom("Poppins", size: 14))
                                  .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))
                            }
                            .padding(0)
                        }
                        .padding(0)

                          Spacer()
                          // Alternative Views and Spacers
                          HStack(alignment: .center, spacing: 8) {
                            Image("location")
                            .frame(width: 16, height: 16)

                            Text(doctor.location)
                              .font(Font.custom("Poppins", size: 14))
                              .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))
                        }
                        .padding(0)
                    }
                    .padding(0)
                    .frame(width: 295, alignment: .center)

                    Divider()
                    .frame(minHeight: 0, maxHeight: 0)
                    .overlay(
                        Rectangle()
                            .stroke(.white.opacity(0.15), lineWidth: 1)
                    )
                    .background(Color(red: 0.8, green: 0.88, blue: 1))


                    HStack(alignment: .top, spacing: 12) {
                        HStack(alignment: .center, spacing: 6) {
                            Image("clock")
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color(red: 1, green: 0.69, blue: 0.32))
                            
                            Text(doctor.grade)
                              .font(Font.custom("Poppins", size: 12))
                              .foregroundColor(Color(red: 1, green: 0.69, blue: 0.32))
                        }
                        .padding(0)
                        //.frame(maxWidth: .infinity, alignment: .leading)

                        HStack(alignment: .center, spacing: 6) {
                            Image("clock")
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color(red: 0.28, green: 0.58, blue: 1))
                            
                            Text(doctor.beginWork)
                              .font(Font.custom("Poppins", size: 12))
                              .foregroundColor(Color(red: 0.28, green: 0.58, blue: 1))
                        }
                        .padding(0)
                        .frame(maxWidth: .infinity, alignment: .center)
                    }
                    .padding(0)
                    .frame(alignment: .topLeading)
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 20)
                .background(.white)
                .cornerRadius(12)
                .shadow(color: Color(red: 0.35, green: 0.46, blue: 0.65)
                .opacity(0.04), radius: 10, x: 2, y: 12)
                }
                .padding(0)
            }
        }
        .padding(0)
        .frame(width: 327)
    }
}
