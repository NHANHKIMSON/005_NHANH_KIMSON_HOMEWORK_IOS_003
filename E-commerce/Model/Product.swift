import Foundation
class Product: Identifiable{
    var id = UUID()
    var title: String
    var subTitle: String
    var image: String
    var isFovorite: Bool
    var price: Double
    var qauntity: Int
    var status: String
    init(title: String, subTitle: String, image: String, isFovorite: Bool, price: Double, qauntity: Int, status: String) {
        self.title = title
        self.subTitle = subTitle
        self.image = image
        self.isFovorite = isFovorite
        self.price = price
        self.qauntity = qauntity
        self.status = status
    }
    static var product: [Product] = [
        Product(title: "The Mirac Jiz", subTitle: "Lisa Robber", image: "bag", isFovorite: true, price: 195, qauntity: 205, status: "New Arrivals"),
        Product(title: "The Mirac Jiz", subTitle: "Lisa Robber", image: "bag4", isFovorite: false, price: 195, qauntity: 205, status: "New Arrivals"),
        Product(title: "The Mirac Jiz", subTitle: "Lisa Robber", image: "watchTissot", isFovorite: true, price: 195, qauntity: 205, status: "New Arrivals"),
        Product(title: "The Mirac Jiz", subTitle: "Lisa Robber", image: "bag3", isFovorite: false, price: 195, qauntity: 205, status: "New Arrivals"),
        Product(title: "The Mirac Jiz", subTitle: "Lisa Robber", image: "bag4", isFovorite: true, price: 195, qauntity: 205, status: "New Arrivals"),
        Product(title: "The Mirac Jiz", subTitle: "Lisa Robber", image: "bag", isFovorite: true, price: 195, qauntity: 205, status: "New Arrivals")
    ]
}


