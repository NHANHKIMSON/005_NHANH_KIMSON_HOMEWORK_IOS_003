//
//  Profile.swift
//  Psakhmer
//
//  Created by Apple on 8/29/25.
//

import SwiftUI
import Foundation

struct Profile: View {
    var body: some View {
        NavigationStack{
            ProfileContentView()
                .toolbar{
                    ToolbarItem(placement: .principal){
                        Text("My Profile")
                            .bold()
                    }
                    ToolbarItem(placement: .topBarTrailing){
                        NavigationLink{
                            SettingView()
                        } label: {
                            Image(systemName: "gearshape")
                                .foregroundStyle(Color(.black))
                        }
                    }
                }
        }
    }
}

#Preview {
    Profile()
}


struct ProfileContentView: View{
    @State var username: String = ""
    @State var email: String = ""
    var body: some View{
        VStack{
            Form{
                HStack(alignment: .center){
                    bedge(iconName: "bagboy1")
                        .clipShape(.circle)
                        .frame(minWidth: 32, maxWidth: 96)
                }
                .frame(maxWidth: .infinity)
                VStack(alignment: .leading, spacing: 26){
                    Group{
                        Group{
                            Section(header: headerText(text: "Username")){
                                formTextField(iconName: "person", title: "Nhanh Kimson", text: $username)
                            }
                            Section(header: headerText(text: "Email or Phone Number")){
                                formTextField(iconName: "envelope", title: "nhanhkimson.biu@gmail.com", text: $username)
                            }
                        }
                        .disabled(true)
                        Section(header: headerText(text: "Account Linked With")){
                            VStack(alignment: .center, spacing: 14){
                                primaryButton(text: "Create Account", false, action: {
                                    
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
                        }
                    }
                    .listRowInsets(EdgeInsets())
                }
                .listRowSeparator(.hidden)
            }
            .scrollContentBackground(.hidden)
        }
    }
}
