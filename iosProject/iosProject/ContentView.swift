import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center) {
            HeadView()
            
            VStack(spacing: 32) {
                            VStack(spacing: 24) {
                                VStack(spacing: 20) {
                                    CardView()

                                    SearchView()
                                }
                                .padding(0)

                                InformationView()
                            }
                            .padding(0)

                            DoctorView()
                        }
                        .padding(0)
        }
        .background(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
