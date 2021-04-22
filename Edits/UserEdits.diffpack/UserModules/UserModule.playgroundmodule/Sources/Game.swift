
import PlaygroundSupport 
import SwiftUI
import UniformTypeIdentifiers

struct DraggableText: View {
    let word: String
    
    var body: some View{
        Text(word)
            .foregroundColor(Color(#colorLiteral(red: 0.3126995265483856, green: 0.5542612671852112, blue: 0.598693311214447, alpha: 1.0)))
            .bold()
            .font(.system(size: 24))
            .onDrag { return NSItemProvider(object: self.word as NSString) }
    }
}

struct BlankView: View {
    @State var word: String = "__________"
    var onDropWord: (String) -> Void
    
    var body: some View{
        let w = Text(word)
            .frame(width: 200, height: 50)
            .font(.system(size: 24))
            .foregroundColor(Color(#colorLiteral(red: 0.21311542391777039, green: 0.5617327690124512, blue: 0.6058951020240784, alpha: 1.0)))
        
        return Rectangle()
            .fill(Color(#colorLiteral(red: 0.1353607475757599, green: 0.1353607475757599, blue: 0.1353607475757599, alpha: 1.0)))
            .frame(width: 200, height: 50)
            .overlay(w)
            .onDrop(of: [UTType.plainText], isTargeted: .constant(true)) { providers in
                guard let ppp = providers.first else {
                    return false
                }
                
                ppp.loadItem(forTypeIdentifier: UTType.plainText.description) { (wordDataAsSecureCoding, error) in
                    guard let wordData = wordDataAsSecureCoding as? Data,
                          let word = String(data: wordData, encoding: .utf8) else {
                        return
                    }
                    
                    self.word = word
                    self.onDropWord(word)
                }
                
                return true
            }
    }
}



public struct Game: View {
    public init(){}
    
    let word1 = "RUMOR"
    let word2 = "DATE"
    let word3 = "SOURCE"
    let word4 = "PARENTS"
    let word5 = "CHAIN MESSAGE"
    let word6 = "OTHER SITES"
    let word7 = "AUTHOR"
    let word8 = "EXPERT"
    
    @State var words: [Int: String] = [:]
    @State private var hasWon = false
    @State private var isNext = false
    
    public var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.1353607475757599, green: 0.1353607475757599, blue: 0.1353607475757599, alpha: 1.0))
                .ignoresSafeArea()
            VStack(spacing: 50){
                Text("Complete the sentences by dragging the words at the bottom into the respective blankets:")
                    .font(.system(size: 30))
                    .bold()
                    .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                
                VStack (alignment: .leading){
                    HStack {
                        Text("1.")
                            .font(.system(size: 24))
                            .bold()
                            .foregroundColor(Color(#colorLiteral(red: 0.3126995265483856, green: 0.5542612671852112, blue: 0.598693311214447, alpha: 1.0)))
                        Text("A fake news about a person or a company is called")
                            .font(.system(size: 24))
                        BlankView() { selectedWord in
                            words[0] = selectedWord
                            checkCompletion()
                        }
                        if checkCorrect0(){
                            Text("👍.")
                                .font(.system(size: 30))
                        }
                    }
                    HStack {
                        Text("2.")
                            .font(.system(size: 24))
                            .bold()
                            .foregroundColor(Color(#colorLiteral(red: 0.3126995265483856, green: 0.5542612671852112, blue: 0.598693311214447, alpha: 1.0)))
                        Text("A")
                            .font(.system(size: 24))
                        BlankView() { selectedWord in
                            words[1] = selectedWord
                            checkCompletion()
                        }
                        if checkCorrect1(){
                            Text("👍")
                                .font(.system(size: 30))
                        }
                        Text("tells you to share it with a large amount of people.")
                            .font(.system(size: 24))
                    }
                    HStack {
                        Text("3.")
                            .font(.system(size: 24))
                            .bold()
                            .foregroundColor(Color(#colorLiteral(red: 0.3126995265483856, green: 0.5542612671852112, blue: 0.598693311214447, alpha: 1.0)))
                        Text("Make sure to consider the")
                            .font(.system(size: 24))
                        BlankView() { selectedWord in
                            words[2] = selectedWord
                            checkCompletion()
                        }
                        if checkCorrect2(){
                            Text("👍")
                                .font(.system(size: 30))
                        }
                        Text("and to check the")
                            .font(.system(size: 24))
                        BlankView() { selectedWord in
                            words[3] = selectedWord
                            checkCompletion()
                        }
                        if checkCorrect3(){
                            Text("👍.")
                                .font(.system(size: 30))
                        }
                        
                    }
                    HStack {
                        Text("4.")
                            .font(.system(size: 24))
                            .bold()
                            .foregroundColor(Color(#colorLiteral(red: 0.3126995265483856, green: 0.5542612671852112, blue: 0.598693311214447, alpha: 1.0)))
                        Text("You should check the")
                            .font(.system(size: 24))
                        BlankView() { selectedWord in
                            words[4] = selectedWord
                            checkCompletion()
                        }
                        if checkCorrect4(){
                            Text("👍")
                                .font(.system(size: 30))
                        }
                        Text("to see if it is old or new.")
                            .font(.system(size: 24))
                    }
                    HStack {
                        Text("5.")
                            .font(.system(size: 24))
                            .bold()
                            .foregroundColor(Color(#colorLiteral(red: 0.3126995265483856, green: 0.5542612671852112, blue: 0.598693311214447, alpha: 1.0)))
                        Text("To be sure, you should check")
                            .font(.system(size: 24))
                        BlankView() { selectedWord in
                            words[5] = selectedWord
                            checkCompletion()
                        }
                        if checkCorrect5(){
                            Text("👍")
                                .font(.system(size: 30))
                        }
                        Text(", ask your")
                            .font(.system(size: 24))
                        BlankView() { selectedWord in
                            words[6] = selectedWord
                            checkCompletion()
                        }
                        if checkCorrect6(){
                            Text("👍")
                                .font(.system(size: 30))
                        }
                        Text("or an")
                            .font(.system(size: 24))
                        BlankView() { selectedWord in
                            words[7] = selectedWord
                            checkCompletion()
                        }
                        if checkCorrect7(){
                            Text("👍.")
                                .font(.system(size: 30))
                        }
                    }
                }
                
                HStack(spacing: 30){
                    VStack(spacing: 20){
                        DraggableText(word: word1)
                        DraggableText(word: word2)
                    }
                    VStack(spacing: 20){
                        DraggableText(word: word3)
                        DraggableText(word: word4)
                    }
                    VStack(spacing: 20){
                        DraggableText(word: word5)
                        DraggableText(word: word6)
                    }
                    VStack(spacing: 20){
                        DraggableText(word: word7)
                        DraggableText(word: word8)
                    }
                }
                .padding(40)
                
                if hasWon {
                    Text("🎉🎉🎉 CONGRATULATIONS! 🎉🎉🎉 \nYou have learned how to check if some information \nis true or just fake news!")
                        .font(.system(size: 30))
                        .bold()
                        .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                        .multilineTextAlignment(.center)
                    
                    HStack {
                        Button("START OVER!") {
                            isNext.toggle()
                            
                        }
                        .fullScreenCover(isPresented: $isNext) {
                            WelcomePage()
                            
                        }
                    }
                    .foregroundColor(.white)
                    .font(.system(size: 24))
                    .frame(width: 500, height: 50)
                    .background(Color(#colorLiteral(red: 0.3126995265483856, green: 0.5542612671852112, blue: 0.598693311214447, alpha: 1.0)))
                    .cornerRadius(10)
                }
            }
            .padding()
        }
    }
    
    func checkCorrect0() -> Bool {
        let correct = "RUMOR"
        if words[0] == correct{ return true}
        return false 
    }
    
    func checkCorrect1() -> Bool {
        let correct = "CHAIN MESSAGE"
        if words[1] == correct{ return true}
        return false 
    }
    
    func checkCorrect2() -> Bool {
        let correct = "SOURCE"
        if words[2] == correct{ return true}
        return false 
    }
    
    func checkCorrect3() -> Bool {
        let correct = "AUTHOR"
        if words[3] == correct{ return true}
        return false 
    }
    
    func checkCorrect4() -> Bool {
        let correct = "DATE"
        if words[4] == correct{ return true}
        return false 
    }
    
    func checkCorrect5() -> Bool {
        let correct = "OTHER SITES"
        if words[5] == correct{ return true}
        return false 
    }
    
    func checkCorrect6() -> Bool {
        let correct = "PARENTS"
        if words[6] == correct{ return true}
        return false 
    }
    
    func checkCorrect7() -> Bool {
        let correct = "EXPERT"
        if words[7] == correct{ return true}
        return false 
    }
    
    func checkCompletion() {
        let expected = [
            0: "RUMOR",
            1: "CHAIN MESSAGE",
            2: "SOURCE",
            3: "AUTHOR",
            4: "DATE",
            5: "OTHER SITES",
            6: "PARENTS",
            7: "EXPERT"
        ]
        
        if words == expected {
            hasWon = true
        }
        
    }
}
