import SwiftUI

struct add_post: View {
    
    @State private var profileText = ""
    @State private var profileText1 = ""


    var placeholse: String {
        profileText.isEmpty ?
        "   Write price" : ""
    }
    var body: some View {
        NavigationView {
            VStack{
                Divider()
                HStack{
                    Image("0")
                    ZStack(alignment: .topLeading){
                        TextEditor(text: $profileText)
                            .scrollContentBackground(.hidden)
                            .foregroundColor(.black)
                            .padding(.horizontal)
                            .padding(10)
                            .background(Color("gray."))
                            .frame(width: 265 , height: 120)
                            .cornerRadius(10)
                            .overlay(
                            RoundedRectangle(cornerRadius: 10.0)
                            .stroke(lineWidth: 0.20)
                                
                            )
                        Text(placeholse)
                    }
                }
                .navigationBarTitle("اضافه فيديو", displayMode: .inline)
               
                Divider()
                HStack{
                    TextField("" ,text: $profileText1)
                        .scrollContentBackground(.hidden)
                        .foregroundColor(.black)
                        .padding(.horizontal)
                        .padding(10)
                        .background(Color("gray."))
                        .frame(width: 100 , height: 35)
                        .cornerRadius(10)
                        .overlay(
                        RoundedRectangle(cornerRadius: 10.0)
                        .stroke(lineWidth: 0.20)
                            
                        )
                    
                        .padding(.top)
                        .padding(.leading,80)

                        Spacer()
                    Text("سعر المنتج")
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)

                }
                VStack(alignment: .trailing){
                    
                    Text("أضف صورة للمنتج")
                        .multilineTextAlignment(.trailing)
                    
                        .padding(.top)
                }
                button_camera()

                Divider()
                    Spacer()
                        
                        Button  { print("s")
                        } label: {
                            
                        }
                
                VStack{
                    Button  { print("s")
                    } label: {
                        Text("نشر")
                            .bold()
                            .foregroundColor(Color.white)
                            .frame(width: 214.13, height: 39)
                            .background(Color("orange"))
                            .cornerRadius(10)
                        
                        
                        
                    }
                }

            }
        }
   
            }
        }

    
    
    struct add_post_Previews: PreviewProvider {
        static var previews: some View {
            add_post()
        }
    }
    
    

