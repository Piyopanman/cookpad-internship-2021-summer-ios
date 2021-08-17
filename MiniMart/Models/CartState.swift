import Foundation
import Combine

final class CartState: ObservableObject {
    @Published var products: [FetchProductsQuery.Data.Product] = []
    
    func addToCart(product: FetchProductsQuery.Data.Product) -> Void{
        products.append(product)
    }
    
    func getCartItemCount() ->Int{
        return products.count
    }
}
