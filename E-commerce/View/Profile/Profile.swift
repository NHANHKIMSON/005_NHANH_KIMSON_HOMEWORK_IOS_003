

import SwiftUI
import Foundation

struct Profile: View {
    @Binding var isLogout: Bool
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(alignment: .leading ,spacing: 16){
                    CircleImageGradience()
                    LoginForm()
                    LoginThirdParty()
                }
            }
            .padding(.horizontal, 16)
            .toolbar{
                ToolbarItem(placement: .principal){
                    Text("My Profile")
                        .font(.title3)
                        .bold()
                }
                ToolbarItem(placement: .topBarTrailing){
                    NavigationLink{
                        SettingView(isLogout: $isLogout)
                    } label: {
                        Image(systemName: "gearshape")
                            .foregroundStyle(Color(.black))
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}




struct CircleImageGradience: View {
    var body: some View {
        // Image circle
        VStack(alignment: .center){
            bedge(iconName: "bagboy1")
                .clipShape(.circle)
                .frame(minWidth: 32, maxWidth: 96)
        }
        .frame(maxWidth: .infinity)
        .padding(.top, 32)
    }
}





struct LoginThirdParty: View {
    var body: some View {
        // Login with google and password
        Section(header: headerText(text: "Account Linked With")){
            VStack(alignment: .center, spacing: 14){
                primaryButtonIcon(text: "Sign Up With Facebook", iconName: "facebook", action: {
                    print("Hello")
                })
                primaryButtonIcon(text: "Sign Up with Goggle", iconName: "google", action: {
                    print("Hello")
                })
            }
        }
        // End Login with google and password
    }
}


struct LoginForm: View{
    @State var username: String = ""
    @State var email: String = ""
    var body: some View{
        // Login Form username | Email
        Form{
            VStack(alignment: .leading, spacing: 16){
                Group{
                    Section(header: headerText(text: "Username")){
                        formTextField(iconName: "person", title: "Nhanh Kimson", text: $username)
                    }
                    Section(header: headerText(text: "Email or Phone Number")){
                        formTextField(iconName: "envelope", title: "nhanhkimson.biu@gmail.com", text: $username)
                    }
                    .disabled(true)
                }
            }
            .listRowInsets(EdgeInsets())
            .listRowSeparator(.hidden)
        }
        .formStyle(.columns)
        .scrollContentBackground(.hidden)
    }
}
