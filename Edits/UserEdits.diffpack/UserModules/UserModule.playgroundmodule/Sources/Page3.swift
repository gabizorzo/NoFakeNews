import PlaygroundSupport
import SwiftUI

struct CheckView: View {
    @State var isChecked:Bool = false
    func toggle(){isChecked = !isChecked}
    var body: some View {
        Button(action: toggle){
            HStack{
                Image(systemName: isChecked ? "checkmark.square": "square")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color(#colorLiteral(red: 0.3126995265483856, green: 0.5542612671852112, blue: 0.598693311214447, alpha: 1.0)))
            }
            
        }
        
    }
    
}

public struct Page3: View {
    public init(){}
    
    @State private var isNext = false
    public var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.1353607475757599, green: 0.1353607475757599, blue: 0.1353607475757599, alpha: 1.0))
                .ignoresSafeArea()
            
            Spacer()
            VStack(spacing: 50){
                Spacer()
                Spacer()
                
                Text("It is not always easy to identify a rumor or a chain message. \nIf you are not sure, check if these apply:")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                    .bold()
                    .padding(.leading)
                    .lineSpacing(10)
                    .multilineTextAlignment(.center)
                
                VStack(alignment: .leading, spacing: 40){
                    HStack{
                        CheckView()
                        
                        Text("The message says that it is not a rumor or a chain.")
                            .font(.system(size: 25))
                            .foregroundColor(.white)
                            .padding(.leading)
                            .lineSpacing(10)
                    }
                    
                    HStack{
                        CheckView()
                        
                        Text("The message tells me to share it with a lot of people.")
                            .font(.system(size: 25))
                            .foregroundColor(.white)
                            .padding(.leading)
                            .lineSpacing(10)
                    }
                    
                    HStack (alignment: .top){
                        CheckView()
                        
                        Text("The message tells me that something really good is going to happen to me if I share it.")
                            .font(.system(size: 25))
                            .foregroundColor(.white)
                            .padding(.leading)
                            .lineSpacing(10)
                    }
                    
                    HStack (alignment: .top){
                        CheckView()
                        
                        Text("The message threatens me, saying that something really bad is going to happen to me if I do not share it.")
                            .font(.system(size: 25))
                            .foregroundColor(.white)
                            .padding(.leading)
                            .lineSpacing(10)
                    }
                    
                }
                
                Spacer()
                
                HStack {
                    Button("NEXT") {
                        isNext.toggle()
                        
                    }
                    .fullScreenCover(isPresented: $isNext) {
                        Page4()
                        
                    }
                }
                .foregroundColor(.white)
                .font(.system(size: 24))
                .frame(width: 150, height: 50)
                .background(Color(#colorLiteral(red: 0.3126995265483856, green: 0.5542612671852112, blue: 0.598693311214447, alpha: 1.0)))
                .cornerRadius(10)
                
                Spacer()
                
                
            }
            .padding(50)
        }
    }
}
