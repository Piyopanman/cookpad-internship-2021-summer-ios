import SwiftUI

struct CartPageView: View {
    @EnvironmentObject var cartState: CartState
    var body: some View {
//        VStack{
//            List(cartState.cartItems, id: \.product.id){ item in
//                HStack(alignment: .top){
//                    RemoteImage(urlString: item.product.imageUrl)
//                                           .frame(width: 100, height: 100)
//                       VStack(alignment: .leading, spacing: 8) {
//                           Text(item.product.name)
//                           Text("\(item.product.price)円")
//                           Text("\(item.quantity)個")
//                       }
//                       .padding(.vertical, 8)
//                }
//            }
//        }
        Text("hello woidl")
    }
}

struct CartPageView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CartPageView()
        }
        .environmentObject(CartState())
    }
}
