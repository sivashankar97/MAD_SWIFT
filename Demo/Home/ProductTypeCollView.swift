
import SwiftUI

struct ProductTypeCollView: View {
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack {
                
                ForEach((1...10).reversed(), id: \.self) { _ in
                    ProductTypeCollVCell()
                }
            }
        }
    }
}

struct ProductTypeCollView_Previews: PreviewProvider {
    static var previews: some View {
        ProductTypeCollView()
    }
}
