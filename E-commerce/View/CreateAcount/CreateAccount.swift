import SwiftUI
import Foundation
struct CreateAccount: View {
    @State var username: String = ""
    @State var password: String = ""
    @State var email: String = ""
    @State var isHide: Bool = false
    @State var isLoged: Bool = false
    
    var body: some View {
        if !isLoged{
            NavigationStack{
                VStack{
                    HStack{
                        Text("Start learning with create your account")
                            .foregroundStyle(Color(.systemGray))
                        Spacer()
                    }
                    .padding(.horizontal)
                    ZStack{
                        Color(.white)
                            .ignoresSafeArea()
                        Spacer()
                        VStack{
                            Form{
                                Group{
                                    VStack(alignment: .leading, spacing: 26){
                                        Section(header: headerText(text: "Usename")){
                                            formTextField(iconName: "person", title: "Create your username", text: $username)
                                        }
                                        Section(header: headerText(text: "Email or Phone Number")){
                                            formTextField(iconName: "envelope", title: "Create your username", text: $email)
                                        }
                                        Section(header: headerText(text: "Password")){
                                            formTextField(iconName: "exclamationmark.lock", title: "Password", text: $password, isHide: $isHide)
                                        }
                                    }
                                    
                                }
                                .listRowInsets(EdgeInsets())  // remove default space
                                .listRowSeparator(.hidden)
                            }
                            .scrollContentBackground(.hidden)
                        }
                    }
                    .toolbar{
                        ToolbarItem(placement: .topBarLeading){
                            Text("Create Account")
                                .font(.title)
                                .bold()
                        }
                    }
                    // ----------------------
                    
                    VStack(alignment: .center, spacing: 14){
                        Text("\(isLoged)")
                        primaryButton(text: "Create Account", false, action: {
                            isLoged.toggle()
                        })
                        Text("Or using other method")
                            .foregroundStyle(.gray)
                        primaryButtonIcon(text: "Sign Up With Facebook", iconName: "facebook", action: {
                            print("Hello")
                        })
                        primaryButtonIcon(text: "Sign Up with Goggle", iconName: "google", action: {
                            print("Hello")
                        })
                    }
                    .padding()
                    .navigationDestination(isPresented: $isLoged){
                        Home()
                            .navigationBarBackButtonHidden(true)
                    }
                    
                    // -----------------------
                    
                }
            }
        }else{
            TabView{
                HomeView()
                    .tabItem{
                        Label("Home", systemImage: "house.fill")
                    }
                Text("Order")
                    .tabItem{
                        Label("Order", systemImage: "box.truck.fill")
                    }
                Text("scdsd")
                    .tabItem{
                        Label("Favorite", systemImage: "heart.fill")
                    }
                Profile()
                    .tabItem{
                        Label("Profile", systemImage: "person.fill")
                    }
            }
            .tint(.blue)
        }
    }
}

#Preview {
    CreateAccount()
}


// Text header for section
func headerText(text: String) -> some View{
    Text(text)
        .font(.headline)
        .fontWeight(.bold)
}

// Form Text field
func formTextField(iconName: String, title: String, text: Binding<String>) -> some View{
    HStack(spacing: 20){
        Image(systemName: iconName)
            .frame(width: 20)
        TextField(title, text: text)
            .keyboardType(iconName == "envelope" ? .emailAddress : .default)
    }
    .padding()
    .background(Color(UIColor.secondarySystemBackground))
    .cornerRadius(.infinity)
}
// overloading func that add secure field functionality
func formTextField(iconName: String, title: String, text: Binding<String>, isHide: Binding<Bool>) -> some View{
    HStack(spacing: 20){
        Image(systemName: iconName)
            .frame(width: 20)
        if isHide.wrappedValue{
            SecureField(title, text: text)
        }else{
            TextField(title, text: text)
        }
        Button(action: {
            isHide.wrappedValue.toggle()
        }) {
            Image(systemName: isHide.wrappedValue ? "eye" : "eye.slash")
                .foregroundStyle(.foreground)
        }
    }
    .padding()
    .background(Color(UIColor.secondarySystemBackground))
    .cornerRadius(.infinity)
}
