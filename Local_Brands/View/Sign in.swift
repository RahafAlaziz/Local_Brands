//
//  Sign in.swift
//  LocalBrands
//
//  Created by Fatima Alismail on 04/11/1444 AH.
//

import SwiftUI
struct Signin: View {
    @State private var showingAlert = false
    @ObservedObject var input = NumbersOnly()
    @State private var ProFileView = ""
    @State private var User = ""
    @State private var NO = ""
    @State private var Pass = ""
    @State private var Ne = ""
    @State var showPassword: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack { Color("offwhite")
                VStack {
                    
                    
                    TextField("رقم الجوال",text: $input.value)
                        .multilineTextAlignment(.trailing)
                        .padding(.trailing,2)
                        .padding(7)
                        .background(.white)
                        .overlay {
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(.white, lineWidth: 4)
                        }
                        .padding(.horizontal)
                        .padding(2)
                    
                    TextField("البريد الالكتروني", text: $ProFileView)
                        .multilineTextAlignment(.trailing)
                        .padding(.trailing,2)
                        .padding(7)
                        .background(.white)
                        .overlay {
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(.white, lineWidth: 4)
                        }
                        .padding(.horizontal)
                        .padding(2)
                    
                    TextField("اسم المستخدم", text: $Pass)
                        .multilineTextAlignment(.trailing)
                        .padding(.trailing,2)
                        .padding(7)
                        .background(.white)
                        .overlay {
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(.white, lineWidth: 4)
                        }
                        .padding(.horizontal)
                        .padding(2)
                    
                    TextField("رقم السجل التجاري  ",text:$NO)
                        .multilineTextAlignment(.trailing)
                        .padding(.trailing,2)
                        .padding(7)
                        .background(.white)
                        .overlay {
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(.white, lineWidth: 4)
                        }
                        .padding(.horizontal)
                        .padding(2)
                    
                    TextField("كلمة المرور", text: $Ne)
                        .multilineTextAlignment(.trailing)
                        .padding(.trailing,2)
                        .padding(7)
                        .background(.white)
                        .overlay {
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(.white, lineWidth: 4)
                        }
                        .padding(.horizontal)
                        .padding(2)
                    
                    
                    TextField("تاكيد كلمة المرور", text: $User)
                        .multilineTextAlignment(.trailing)
                        .padding(.trailing,2)
                        .padding(7)
                        .background(.white)
                        .overlay {
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(.white, lineWidth:4)
                        }
                        .padding(.horizontal)
                        .padding(2)
                    
                    //                    .padding(.top,-520)
                    
                    //   NavigationLink(destination: ProFileView()){
                    //         Text("نسيت كلمة المرور ؟")}
                    //     .padding(.top,-290)
                    Button("سجل معنا") {
                        showingAlert = true }
                    .alert("سيتم التحقق والتواصل معك قريبا عن طريق البريد الالكتروني ", isPresented: $showingAlert) {}
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: Gradient(colors: [Color("orange"), Color("orange")]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(8)
                    .padding()
                    
                }
                
                
            }
//                }  .background(Color("offwhite"))
//                .edgesIgnoringSafeArea(.all)
                .ignoresSafeArea(.all)
                .navigationBarTitle("  التسجيل كصاحب متجر ", displayMode: .inline)
                    .scrollContentBackground(.hidden)
//                    .border(.red)

            
        }
    }
    
    class NumbersOnly: ObservableObject{
        @Published var value = "" {
            didSet {
                let filtered = value.filter{ $0.isNumber}
                if value != filtered {
                    
                    
                    value = filtered
                    
                }
            }
        }
    }
}

    struct SigninView_Previews: PreviewProvider {
        static var previews: some View {
            Signin()
        }
    }



//
////
////  button.swift
////  test image picker
////
////  Created by lujain mohammed on 18/11/1444 AH.
////
//
//import SwiftUI
//
//struct ProfileView: View {
//    @Binding var toggleFullScreen:Bool
//    var body: some View {
//        VStack(alignment: .center, spacing: 10, content:{
//            Text("")
//            Button("close") {
//                toggleFullScreen.toggle()
//            }
//        })
//    }
//}
//
//
//struct button: View {
//    @State var isFullScreenCoverOpen:Bool = false
//    var body: some View {
//        Button("Open profile") {
//            isFullScreenCoverOpen.toggle()
//        }.fullScreenCover(isPresented: $isFullScreenCoverOpen, content:{
//            ProfileView(toggleFullScreen: $isFullScreenCoverOpen)
//        })
//
//    }
//}
//
//struct button_Previews: PreviewProvider {
//    static var previews: some View {
//        button()
//    }
//}
