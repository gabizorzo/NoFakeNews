
import PlaygroundSupport
import SwiftUI

public struct Page2: View {
    public init(){}
    
    @State private var isNext = false
    public var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.1353607475757599, green: 0.1353607475757599, blue: 0.1353607475757599, alpha: 1.0))
                .ignoresSafeArea()
            VStack{
                ZStack{
                    Image(uiImage: #imageLiteral(resourceName: "Blue1.png"))
                        .resizable()
                        .frame(width: 800, height: 400)
                    
                    Text("Rumor is a FAKE NEWS about ANY person \nor company, with the purpose of HARMING \nor causing PANIC.")
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                        .bold()
                        .padding(.leading)
                        .lineSpacing(10)
                        .multilineTextAlignment(.center)
                }
                
                ZStack{
                    Image(uiImage: #imageLiteral(resourceName: "Blue2.png"))
                        .resizable()
                        .frame(width: 800, height: 400)
                    
                    
                    Text("The chain is a message with FALSE CONTENT \nand asking you to SHARE quickly with a \nlarge amount of people.")
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                        .bold()
                        .padding(.leading)
                        .lineSpacing(10)
                        .multilineTextAlignment(.center)
                }
                
                HStack {
                    Button("NEXT") {
                        isNext.toggle()
                        
                    }
                    .fullScreenCover(isPresented: $isNext) {
                        Page3()
                        
                    }
                }
                .foregroundColor(.white)
                .font(.system(size: 24))
                .frame(width: 150, height: 50)
                .background(Color(#colorLiteral(red: 0.3126995265483856, green: 0.5542612671852112, blue: 0.598693311214447, alpha: 1.0)))
                .cornerRadius(10)
                
                
            }
        }
    }
}
