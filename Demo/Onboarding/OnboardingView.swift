

import SwiftUI

struct OnboardingView: View {
    
    var subViews = [
        UIHostingController(rootView: Subview(imageString: "First")),
        UIHostingController(rootView: Subview(imageString: "Second")),
        UIHostingController(rootView: Subview(imageString: "Third"))
    ]
    
    var titles = ["Welcome To  Tasty Donuts", "Order Your Favourites", "Add your Donets"]
        
    var captions =  ["To Tasty Donuts", "just one click to order.", "buy if you like"]
    
    @State var currentPageIndex = 0
    @EnvironmentObject var dataOnboard: DataOnboarding
    @EnvironmentObject var userOnboard: UserOnboard
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            PageViewController(currentPageIndex: $currentPageIndex,viewControllers: subViews)
                .frame(height: (UIScreen.main.bounds.width * 500) / 414)
            
            Spacer()
            
            Group {
                
                Text(titles[currentPageIndex])
                    .font(.title)
                
                Text(captions[currentPageIndex])
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .frame(width: 300, height: 50, alignment: .leading)
                    .lineLimit(nil)
            }.padding([.leading, .trailing])
            
            HStack {
                
                PageControl(numberOfPages: subViews.count, currentPageIndex: $currentPageIndex)
                
                Spacer()
                
                Button(action: {
                    
                    if self.currentPageIndex + 1 == self.subViews.count {
//                        self.currentPageIndex = 0
                        
                        //if using with proprty wrapper
//                        self.dataOnboard.onboardComlete = true
                        
                        //if using with out property wrapper
                        self.userOnboard.onboardComplete = true
                    } else {
                        self.currentPageIndex += 1
                    }
                }) {
                    Image(systemName: "arrow.right")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 30, height: 30)
                        .padding()
                        .background(lightblueColor)
                        .clipShape(Circle())
                }
            }.padding()
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
