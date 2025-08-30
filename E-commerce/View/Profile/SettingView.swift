import SwiftUI

struct SettingView: View{
    @Environment(\.dismiss) var dissmiss
    var body: some View{
        SettingContentView()
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dissmiss()
                    } label: {
                        HStack {
                            Image(systemName: "arrow.backward")
                                .bold()
                        }
                    }
                }
            }
    }
}

#Preview{
    SettingView()
}

struct SettingContentView: View{
    var body: some View{
        NavigationStack{
            List{
                Section("General"){
                    NavigationLink{
                        Text("Edit Profile")
                    } label: {
                        ListItem(icon: "person", text: "Edit Profile")
                    }
                    NavigationLink{
                        Text("Change Password")
                    } label: {
                        ListItem(icon: "exclamationmark.lock", text: "Change Password")
                    }
                    NavigationLink{
                        Text("Notification")
                    } label: {
                        ListItem(icon: "bell", text: "Notification")
                    }
                    NavigationLink{
                        Text("Security")
                    } label: {
                        ListItem(icon: "key.viewfinder", text: "Security")
                    }
                }
                Section("Accounts"){
                    NavigationLink{
                        Text("iClould")
                    } label: {
                        ListItem(icon: "icloud", text: "iClould")
                    }
                    NavigationLink{
                        Text("Password and Security")
                    } label: {
                        ListItem(icon: "lock", text: "Password & Security")
                    }
                }
                Section("About"){
                    NavigationLink{
                        Text("General")
                    } label: {
                        ListItem(icon: "info.circle", text: "General")
                    }
                    NavigationLink{
                        Text("Software Update")
                    } label: {
                        ListItem(icon: "arrow.up.right.circle", text: "Softwate Update")
                    }
                }
                NavigationLink{
                    Text("logout")
                } label: {
                    ListItem(icon: "rectangle.portrait.and.arrow.right", text: "Logout")
                }
            }
            .toolbar{
                ToolbarItem(placement: .principal){
                    Text("Setting")
                        .bold()
                }
            }
        }
    }
}
struct ListItem: View {
    var icon: String = ""
    var text: String = ""
    var body: some View {
        HStack{
            Image(systemName: icon)
                .frame(width: 32)
            Text(text)
        }
        .foregroundStyle(text == "Logout" ? .red : .black)
    }
}


