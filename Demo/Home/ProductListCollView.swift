

import SwiftUI

struct ProductListCollView: View {
    
    let arrProduct: [Product]
    
    var body: some View {
        
        GridCollection(arrProduct, columns: 2, vSpacing: 20, hSpacing: 10, vPadding: 0, hPadding: 0) {
            ProductListCollVCell(product: $0)
        }
    }
}

struct ProductListCollView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListCollView(arrProduct: [Product(name: "First Product", imageName: "bird"),
        Product(name: "Second Product", imageName: "bird")])
    }
}
