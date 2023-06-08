
import SwiftUI

struct share: View {
    var body: some View {
        shareit()
    }
    
}



struct share_Previews: PreviewProvider {
    static var previews: some View {
        share()
    }
}
    
//
struct shareit : View {
    let link = URL(string: "https://www.hackingwithswift.com")!

    @State var items : [Any] = []
//    @State var sheet = false
    
    var body: some View{
        
        VStack{
            ShareLink(item: link)
                ShareLink(item: link) {
                }
            Button(action: {
                //  adding items to be shared
                items.removeAll()
                items.append(UIImage(named:"0")!)
                
               // sheet.toggle()
                
            }, label: {
                
              
                
            })
        }
       
        }
    }
