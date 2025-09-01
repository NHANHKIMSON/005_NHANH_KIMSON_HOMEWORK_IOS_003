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
        // bag model
            Product(title: "Classic Leather Bag", subTitle: "Zara Collection", image: "bag", isFovorite: true, price: 199, qauntity: 20, status: "New Arrival"),
            Product(title: "Summer Tote", subTitle: "Casual Chic", image: "bag3", isFovorite: true, price: 129, qauntity: 30, status: "Best Seller"),
            Product(title: "Summer Tote", subTitle: "Casual Chic", image: "bag3", isFovorite: true, price: 129, qauntity: 30, status: "Best Seller"),
            Product(title: "Luxury Handbag", subTitle: "Premium Line", image: "bag4", isFovorite: false, price: 299, qauntity: 10, status: "Limited Edition"),
            
            // Cloths
            Product(title: "Jeans Slim Fit", subTitle: "Denim Essentials", image: "jean", isFovorite: false, price: 79, qauntity: 60, status: "Best Seller"),

            
            // Shoose
            Product(title: "Nike Air Runner", subTitle: "Nike Sports", image: "nike2", isFovorite: true, price: 120, qauntity: 25, status: "Hot"),
            Product(title: "Nike Zoom", subTitle: "Sport Edition", image: "nike3", isFovorite: false, price: 130, qauntity: 18, status: "Trending"),
            Product(title: "Nike Shoot", subTitle: "Limited Shoes", image: "shootnike", isFovorite: true, price: 150, qauntity: 12, status: "Limited"),
            
        

            Product(title: "Basic T-shirt", subTitle: "Casual Wear", image: "tshirt", isFovorite: true, price: 25, qauntity: 70, status: "New"),
            Product(title: "Graphic Tee", subTitle: "Urban Style", image: "tshirt2", isFovorite: false, price: 35, qauntity: 50, status: "Hot"),
//            Product(title: "Formal Shirt", subTitle: "Office Wear", image: "T-shirt", isFovorite: false, price: 45, qauntity: 30, status: "Classic"),

            Product(title: "Classic Watch", subTitle: "Timeless", image: "watch", isFovorite: true, price: 199, qauntity: 25, status: "Best Seller"),
            Product(title: "Tissot Watch", subTitle: "Luxury Swiss", image: "watchTissot", isFovorite: true, price: 499, qauntity: 10, status: "Luxury"),
            Product(title: "Women’s Watch", subTitle: "Elegant Style", image: "watchWoman", isFovorite: false, price: 299, qauntity: 15, status: "Trending"),

            
        ]
    
    
    // promotion data
    // -----------------------------------------------------------------
    static var promotion: [Product] = [
        Product(title: "Promo Banner 3", subTitle: "Limited Time", image: "bannerPromotion3", isFovorite: false, price: 0, qauntity: 0, status: "Ad"),
        
//        Product(title: "Promo Banner 2", subTitle: "Special Offer", image: "bannerPromotion2", isFovorite: false, price: 0, qauntity: 0, status: "Ad"),
        Product(title: "Promo Banner 1", subTitle: "Discounts", image: "bannerPromotion1", isFovorite: false, price: 0, qauntity: 0, status: "Ad"),
//        Product(title: "Promo Banner 4", subTitle: "Best Deals", image: "bannerPromotion4", isFovorite: false, price: 0, qauntity: 0, status: "Ad"),
        Product(title: "Promotion Item", subTitle: "Discounted", image: "promotion", isFovorite: false, price: 49, qauntity: 100, status: "Promo")
    ]
    // ----------------------------------------------------------
    
    // Category static data
    // ----------------------------------------------------------
    static var category: [Product] = [
        Product(title: "Zara Dress", subTitle: "Summer Collection", image: "zara", isFovorite: true, price: 99, qauntity: 40, status: "New Arrival"),
        Product(title: "Zara Shoes", subTitle: "Stylish Footwear", image: "zara1", isFovorite: false, price: 120, qauntity: 20, status: "Cloths"),
        Product(title: "Summer Tote", subTitle: "Casual Chic", image: "bag3", isFovorite: true, price: 129, qauntity: 30, status: "Best Seller"),
        Product(title: "Zara Bag", subTitle: "Zara Brand", image: "zarabag", isFovorite: true, price: 180, qauntity: 15, status: "Bag"),
        Product(title: "Boys' Backpack", subTitle: "School Essentials", image: "bagboy1", isFovorite: false, price: 89, qauntity: 50, status: "Trending"),
        Product(title: "Shoose", subTitle: "Runway Exclusive", image: "bagmodel", isFovorite: true, price: 250, qauntity: 8, status: "Exclusive")
    ]
    // ----------------------------------------------------------
    
    
    
    
    // Product that user order
    // ----------------------------------------------------------
    static var myOrder: [Product] = [
        Product(title: "Boys' Backpack", subTitle: "School Essentials", image: "bagboy1", isFovorite: false, price: 89, qauntity: 50, status: "Trending"),
        Product(title: "Classic Watch", subTitle: "Timeless", image: "watch", isFovorite: true, price: 199, qauntity: 25, status: "Best Seller"),
        Product(title: "Tissot Watch", subTitle: "Luxury Swiss", image: "watchTissot", isFovorite: true, price: 499, qauntity: 10, status: "Luxury"),
        Product(title: "Women’s Watch", subTitle: "Elegant Style", image: "watchWoman", isFovorite: false, price: 299, qauntity: 15, status: "Trending"),
    ]
    
    
    // Product that user already buyed
    static var myHistory: [Product] = [
        Product(title: "Summer Tote", subTitle: "Casual Chic", image: "bag3", isFovorite: true, price: 129, qauntity: 30, status: "Best Seller"),
        Product(title: "Nike Shoot", subTitle: "Limited Shoes", image: "shootnike", isFovorite: true, price: 150, qauntity: 12, status: "Limited"),
        Product(title: "Boys' Backpack", subTitle: "School Essentials", image: "bagboy1", isFovorite: false, price: 89, qauntity: 50, status: "Trending"),
        Product(title: "Classic Watch", subTitle: "Timeless", image: "watch", isFovorite: true, price: 199, qauntity: 25, status: "Best Seller"),
        Product(title: "Tissot Watch", subTitle: "Luxury Swiss", image: "watchTissot", isFovorite: true, price: 499, qauntity: 10, status: "Luxury"),
        Product(title: "Women’s Watch", subTitle: "Elegant Style", image: "watchWoman", isFovorite: false, price: 299, qauntity: 15, status: "Trending")
    ]
    
    
    
    
    
}

import SwiftUI
#Preview{
    ContentView()
}
