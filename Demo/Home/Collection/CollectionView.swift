
import SwiftUI

struct CollectionView: View {
    
    @State var arrData: [String] = []
    @State var isOpen: Bool = false
    
    var body: some View {
        
        CollectionUI(arrData: self.$arrData)
              .edgesIgnoringSafeArea(.all)
        
    }
    
    func openMenu() {
        self.isOpen.toggle()
    }
    
}

struct CollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionView()
    }
}
