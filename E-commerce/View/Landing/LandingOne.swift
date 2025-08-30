import SwiftUI
struct LandingOne: View {
    var title: String = "Various Collections Of The Latest Prodducts"
    var subTitle = "Urna amet, suspendisse ullamcorper ac edit diam facillisis cursus verstibulum"
    var iamge: String = ""
    var body: some View {
        Group{
            VStack(alignment: .center, spacing: 46){
                ImageResizeToFit(name: iamge)
                VStack(alignment: .center, spacing: 16){
                    Title(title, style: .main)
                    Title(subTitle, style: .subtitle)
                }
            }
        }
    }
}
#Preview {
    LandingOne()
}
