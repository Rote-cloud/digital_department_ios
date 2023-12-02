import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack() {
            ScrollView{
                VStack(alignment: .center) {
                    HeadView()
                    
                    VStack(spacing: SizeManager.bigIndent) {
                        VStack(spacing: SizeManager.stdIndent) {
                            VStack(spacing: SizeManager.smallIndent) {
                                            CardView()

                                            SearchView()
                                        }
                                        .padding(0)

                                        InformationView()
                                    }
                                    .padding(0)

                                    DoctorView()
                                    Spacer(minLength: SizeManager.indent100)
                                }
                                .padding(0)
                }
                .padding(.horizontal, SizeManager.stdIndent)
            }
            VStack(){
                Spacer()
                BarView()
            }
        }.frame(maxHeight: .infinity)
        
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
