

import PlaygroundSupport
import SwiftUI

public struct Page7: View {
    public init(){}
    
    @State private var isNext = false
    public var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.3126995265483856, green: 0.5542612671852112, blue: 0.598693311214447, alpha: 1.0))
                .ignoresSafeArea()
            VStack (spacing: 50){
                
                Text("Don't spread rumors and chain messages. If you send \nFake News, how will your friends know if what you publish \nis true or not? They may begin to not take you seriously.")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                    .bold()
                    .padding(.leading)
                    .lineSpacing(10)
                    .multilineTextAlignment(.center)
                
                
                HStack {
                    Button("LET'S TEST YOUR KNOWLEDGE!") {
                        isNext.toggle()
                        
                    }
                    .fullScreenCover(isPresented: $isNext) {
                        Game()
                        
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

