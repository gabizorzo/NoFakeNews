

import PlaygroundSupport
import SwiftUI

public struct OpeningPage: View {
    public init(){}
    
    @State private var isNext = false
    public var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.8363745808601379, green: 0.6238589882850647, blue: 0.24151688814163208, alpha: 1.0))
                .ignoresSafeArea()
            VStack (spacing: 50){
                
                Text("This Playground was partially based on a material from the Brazilian Internet Management Committee (CGI.br). The original material is called Secure Internet ('Internet Segura' in Portuguese) and follows a Creative Commons license, allowing anyone to use it with no commercial purposes. The author of this Playground adapted and expanded the original material.")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                    .padding(.leading)
                    .lineSpacing(10)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: 700)
                
                
                HStack {
                    Button("LET'S GO!") {
                        isNext.toggle()
                        
                    }
                    .fullScreenCover(isPresented: $isNext) {
                        WelcomePage()
                        
                    }
                }
                .foregroundColor(.white)
                .font(.system(size: 24))
                .frame(width: 500, height: 50)
                .background(Color(#colorLiteral(red: 0.13723891973495483, green: 0.13726511597633362, blue: 0.13723325729370117, alpha: 1.0)))
                .cornerRadius(10)
                
            }
        }
    }
}
