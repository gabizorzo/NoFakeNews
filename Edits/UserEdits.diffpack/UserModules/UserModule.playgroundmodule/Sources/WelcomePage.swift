
import PlaygroundSupport
import SwiftUI

public struct WelcomePage: View {
    public init(){}
    
    @State private var isNext = false
    
    public var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.1353607475757599, green: 0.1353607475757599, blue: 0.1353607475757599, alpha: 1.0))
                .ignoresSafeArea()
            VStack{ 
                Spacer()
                Spacer()
                VStack(alignment: .leading){
                    Text("How can I know if something is")
                        .font(.system(size: 40))
                        .foregroundColor(.white)
                        .padding(.top, 20)
                    Text("FAKE NEWS?")
                        .font(.system(size: 60))
                        .foregroundColor(Color(#colorLiteral(red: 0.2470246255, green: 0.4470563531, blue: 0.4811534882, alpha: 1.0)))
                        .bold()
                    Text("Let's start:")
                        .font(.system(size: 40))
                        .foregroundColor(.white)
                        .padding(.top, 10)
                }
                .padding(.bottom)
                
                
                HStack{
                    Image(uiImage: #imageLiteral(resourceName: "Menino.png"))
                        .resizable()
                        .scaledToFit()
                    
                    VStack (alignment: .leading, spacing: 30){
                        HStack {
                            Button("START") {
                                isNext.toggle()
                            }
                            .fullScreenCover(isPresented: $isNext) {
                                Page1()
                            }
                        }
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                        .frame(width: 330, height: 50)
                        .background(Color(#colorLiteral(red: 0.3126995265483856, green: 0.5542612671852112, blue: 0.598693311214447, alpha: 1.0)))
                        .cornerRadius(10)
                        
                        
                        
                    }
                    .padding(.trailing, 70)
                }
            }
            .padding()
        }
    }
}



