

import SwiftUI

struct ProductTypeCollVCell: View {
    
    var body: some View {
        
        Image("bird")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: (UIScreen.main.bounds.width * 105) / 414, height: (UIScreen.main.bounds.width * 105) / 414)
            .cornerRadius(10)
    }
}

struct ProductTypeCollVCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductTypeCollVCell()
            .previewLayout(.fixed(width: (UIScreen.main.bounds.width * 105) / 414, height: (UIScreen.main.bounds.width * 105) / 414))
    }
}
