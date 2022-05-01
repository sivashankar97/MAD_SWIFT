

import SwiftUI

struct HeaderCollVCell: View {
    
    var image : String
    
    var body: some View {
        
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: (UIScreen.main.bounds.width * 380) / 414, height: (UIScreen.main.bounds.width * 210) / 414)
            .cornerRadius(10)
    }
}

struct HeaderCollVCell_Previews: PreviewProvider {
    static var previews: some View {
        HeaderCollVCell(image: "")
            .previewLayout(.fixed(width: (UIScreen.main.bounds.width * 384) / 414, height: (UIScreen.main.bounds.width * 210) / 414))
    }
}
