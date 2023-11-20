import SwiftUI

struct BarView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        HStack(spacing: 0) {
            
            
            TabBar(selectedTab: $selectedTab)
        }
    }
}

struct TabBar: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        VStack() {
            Divider()
            .frame(maxWidth: .infinity, minHeight: 0, maxHeight: 0)
            .overlay(
                Rectangle()
                    .stroke(.white.opacity(0.15), lineWidth: 1)
            )
            .background(CustomColors.lightGrey)
            
            HStack(alignment: .center, spacing: SizeManager.indent12) {
                Spacer()
                
                TabBarButton(imageName: "Home", title: "Home", isSelected: selectedTab == 0) {
                    selectedTab = 0
                }
                
                Spacer()
                
                TabBarButton(imageName: "calendar-2", title: "Calendar", isSelected: selectedTab == 1) {
                    selectedTab = 1
                }
                
                Spacer()
                
                TabBarButton(imageName: "message", title: "Message", isSelected: selectedTab == 2) {
                    selectedTab = 2
                }
                
                Spacer()
                
                TabBarButton(imageName: "profile", title: "Profile", isSelected: selectedTab == 3) {
                    selectedTab = 3
                }
                
                Spacer()
                
            }
            .frame(maxWidth: .infinity)
            //.background(Color.gray.opacity(0.2))
            .padding(.horizontal, SizeManager.stdIndent)
            .padding(.vertical, SizeManager.indent16)
            .background(.white)
        }
        }
}

struct TabBarButton: View {
    let imageName: String
    let title: String
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack(alignment: .center, spacing: SizeManager.indent8) {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: SizeManager.cardIconSize, height: SizeManager.cardIconSize)
                
                if isSelected {
                    Text(title)
                        .font(
                            Fonts.nunito
                        )
                }
            }
            .foregroundColor(isSelected ? CustomColors.blue: CustomColors.grey)
            .padding(.vertical, SizeManager.indent8)
            
        }
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView()
    }
}
