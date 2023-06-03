
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
    @State var items : [Any] = []
    @State var sheet = false
    
    var body: some View{
        
        VStack{
            Button(action: {
                //  adding items to be shared
                items.removeAll()
                items.append(UIImage(named:"0")!)
                
                sheet.toggle()
                
            }, label: {
                
                Text("share")
                    .fontWeight(.heavy)
                
            })
        }
        .sheet(isPresented: $sheet, content: {

            ShareSheet(items: items)
        })
        }
    }

// share sheet
struct ShareSheet : UIViewControllerRepresentable{
    
    // the data you need to share...
    var items : [Any]
    func makeUIViewController(context: Context) ->  UIActivityViewController {
        
        let controller = UIActivityViewController(activityItems: items, applicationActivities: nil )
        
        return controller
        
    }
    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {
        
    }
}
