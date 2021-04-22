

import PlaygroundSupport
import SwiftUI

public struct Page6: View {
    public init(){}
    
    @State private var isNext = false
    public var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.1353607475757599, green: 0.1353607475757599, blue: 0.1353607475757599, alpha: 1.0))
                .ignoresSafeArea()
            VStack (spacing: 30){
                ZStack{
                    Image(uiImage: #imageLiteral(resourceName: "Blue2.png"))
                        .resizable()
                        .frame(width: 800, height: 300)
                    
                    
                    VStack(alignment: .leading){
                        Text("Other tips on \nHOW TO SPOT FAKE NEWS:")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                            .bold()
                            .padding(.leading)
                            .lineSpacing(10)
                            .multilineTextAlignment(.center)
                    }
                    .padding(.bottom, 10)
                }
                .padding(.top, 100)
                .padding(30)
                
                HStack(spacing: 50){
                    VStack(alignment: .center, spacing: 50){
                        VStack{
                            Text("CONSIDER THE SOURCE:")
                                .font(.system(size: 24))
                                .bold()
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .lineSpacing(10)
                            Text("Who sent it? \nCan I find the site?")
                                .font(.system(size: 24))
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .lineSpacing(10)
                        }
                        VStack{
                            Text("CHECK THE AUTHOR:")
                                .font(.system(size: 24))
                                .bold()
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .lineSpacing(10)
                            Text("Does the person who said it exist? \nDo you trust them?")
                                .font(.system(size: 24))
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .lineSpacing(10)
                        }
                        VStack{
                            Text("IS IT A JOKE?")
                                .font(.system(size: 24))
                                .bold()
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .lineSpacing(10)
                            Text("If it sounds too weird, \nit might only be a joke.")
                                .font(.system(size: 24))
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .lineSpacing(10)
                        }
                    }
                    
                    VStack(alignment: .center, spacing: 50){
                        VStack{
                            Text("READ BEYOND:")
                                .font(.system(size: 24))
                                .bold()
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .lineSpacing(10)
                            Text("Read the whole story, \nnot only the headlines!")
                                .font(.system(size: 24))
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .lineSpacing(10)
                        }
                        VStack{
                            Text("CHECK THE DATE:")
                                .font(.system(size: 24))
                                .bold()
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .lineSpacing(10)
                            Text("Is it new? Or is it old? \nOld stories may not be relevant today.")
                                .font(.system(size: 24))
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .lineSpacing(10)
                        }
                        VStack{
                            Text("ASK AN EXPERT:")
                                .font(.system(size: 24))
                                .bold()
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .lineSpacing(10)
                            Text("Ask your parents, a librarian, \nor consult a trustworthy website.")
                                .font(.system(size: 24))
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .lineSpacing(10)
                        }
                    }
                    
                }
                .padding()
                
                
                HStack {
                    Button("NEXT") {
                        isNext.toggle()
                    }
                    .fullScreenCover(isPresented: $isNext) {
                        Page7()
                    }
                }
                .foregroundColor(.white)
                .font(.system(size: 24))
                .frame(width: 150, height: 50)
                .background(Color(#colorLiteral(red: 0.3126995265483856, green: 0.5542612671852112, blue: 0.598693311214447, alpha: 1.0)))
                .cornerRadius(10)
                .padding(.trailing, 40)
                Spacer()
            }
            .padding()
        }
    }
}
