

import SwiftUI

struct TabBarView: View {
    
    var body: some View {
        
        TabView {
            
            ListView()
                .tabItem ( { VStack {
                    Image("ic_email")
                    Text("List View")
                    }
                }).tag(0)
            
            CollectionView()
                .tabItem ( { VStack {
                    Image("ic_email")
                    Text("Collection View")
                    }
                }).tag(1)
        }
    }
    
}

#if DEBUG
struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
#endif
