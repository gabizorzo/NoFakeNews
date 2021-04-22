import PlaygroundSupport
import SwiftUI

public struct Page1: View {
    public init(){}
    
    @State private var isNext = false
    public var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.1353607475757599, green: 0.1353607475757599, blue: 0.1353607475757599, alpha: 1.0))
                .ignoresSafeArea()
            VStack{
                ZStack{
                    Image(uiImage: #imageLiteral(resourceName: "Text.png"))
                        .resizable()
                        .frame(width: 800, height: 300)
                    
                    VStack(alignment: .leading){
                        Text("DON'T BELIEVE in \nEVERYTHING you read!")
                            .font(.system(size: 35))
                            .foregroundColor(.white)
                            .bold()
                            .padding(.leading)
                            .lineSpacing(10)
                            .multilineTextAlignment(.center)
                    }
                    .padding(.bottom, 10)
                }
                .padding(30)
                
                
                HStack(alignment: .center){
                    Image(uiImage: #imageLiteral(resourceName: "Menina.png"))
                        .resizable()
                        .scaledToFit()
                    
                    VStack(alignment: .center, spacing: 30){
                        Text("Do you know when you receive a message you never asked for, from someone you don't know? \n\nThis type of message is called spam. Rumors and chains are examples of spam that you may have received on the Internet. \n\nLet's get to know a little about them.")
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .padding(.trailing, 60)
                            .lineSpacing(10)
                            .frame(maxWidth: 500)
                        
                        HStack {
                            Button("NEXT") {
                                isNext.toggle()
                            }
                            .fullScreenCover(isPresented: $isNext) {
                                Page2()
                            }
                        }
                        .foregroundColor(.white)
                        .font(.system(size: 24))
                        .frame(width: 150, height: 50)
                        .background(Color(#colorLiteral(red: 0.3126995265483856, green: 0.5542612671852112, blue: 0.598693311214447, alpha: 1.0)))
                        .cornerRadius(10)
                        .padding(.trailing, 40)
                    }
                    .padding(.bottom, 30)
                }
                
            }
        }
    }
}
