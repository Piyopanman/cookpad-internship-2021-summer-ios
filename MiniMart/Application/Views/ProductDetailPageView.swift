
import SwiftUI

struct ProductDetailPageView: View {
    @State var isCartViewPresented: Bool = false
    @EnvironmentObject var cartState: CartState
    var product: FetchProductsQuery.Data.Product
    var body: some View {
        VStack(){
            RemoteImage(urlString: product.imageUrl)
                .aspectRatio(contentMode: .fit)
            Text(product.name)
            Text("\(product.price)円")
            Text(product.summary)
            Button(action: { cartState.add(product: product)}){
                Text("カートに追加する")
                    .frame(maxWidth: .infinity)
                    .padding(8)
                    .foregroundColor(Color.white)
                    .background(Color.orange)
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            }
            .padding(8)
            
        }
            .navigationTitle(product.name)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing){
                    CartButton()
                }
            }
        
    }
    
}

struct ProductDetailPageView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ProductDetailPageView(
                product: FetchProductsQuery.Data.Product(
                    id: UUID().uuidString,
                    name: "商品 \(1)",
                    price: 100,
                    summary: "おいしい食材 \(1)",
                    imageUrl: "https://image.mini-mart.com/dummy/1"
                )
            )
        }
        .environmentObject(CartState())
    }
}
