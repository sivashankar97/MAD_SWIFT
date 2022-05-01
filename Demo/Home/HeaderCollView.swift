

import SwiftUI

struct HeaderCollView: View {
    
    @State var currentPageIndex: Int = 0
    
    var body: some View {
        
        VStack {
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack {
                    
                    ForEach((1...10).reversed(), id: \.self) { _ in
                        HeaderCollVCell(image: "")
                            .padding([.trailing])
                    }
                }
            }
            
            PageControl(numberOfPages: 10, currentPageIndex: $currentPageIndex)
        }
    }
}

struct HeaderCollView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderCollView()
    }
}
