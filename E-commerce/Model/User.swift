import Foundation
class User: Identifiable{
    var id = UUID()
    var username: String
    var email: String
    var fullName: String
    var image: String
    var isLogin: Bool = false
    init(username: String, email: String, fullName: String, image: String, isLogin: Bool) {
        self.username = username
        self.email = email
        self.fullName = fullName
        self.image = image
        self.isLogin = isLogin
    }
    static var user: User = (User(username: "nhanhkimson", email: "nhanhkimson.biu@gmail.com", fullName: "Nhanh Kimson", image: "bagboy1", isLogin: false))
}
