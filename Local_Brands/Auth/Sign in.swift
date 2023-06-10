//
//  Sign in.swift
//  LocalBrands
//
//  Created by Fatima Alismail on 04/11/1444 AH.
//

import SwiftUI
import Firebase
//import FirebaseCore
struct Signin: View {
    @State  var showingAlert = false
    @ObservedObject var input = NumbersOnly()
    @State  var ProFileView = ""
    @State  var User = ""
    @State  var NO = ""
    @State  var Pass = ""
    @State  var Ne = ""
    @State  var showPassword: Bool = false
//     @State var email = ""
//    @State var password = ""
    @Binding var isShowingFullScreen1: Bool
    @Environment(\.dismiss) var dismiss
    
    
    
    
    var body: some View {
        NavigationView {
            ZStack { Color("offwhite")
                VStack {
                    //                    Button() {
                    //                       dismiss()
                    //                    } label: {
                    //                        Image(systemName:"xmark")
                    //                                .font(.system(size: 18))
                    //                                .foregroundColor(Color("orange"))
                    //
                    //                    }
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
            
            .ignoresSafeArea(.all)
            .navigationBarTitle("  التسجيل كصاحب متجر ", displayMode: .inline)
            .scrollContentBackground(.hidden)
            .toolbar {
                Button() {
                    dismiss()
                } label: {
                    Image(systemName:"xmark")
                        .font(.system(size: 16))
                        .foregroundColor(Color("orange"))
                    
                    
                    
                }
                
            }
//            func Signin() {
//                Auth.auth().logain(withEmail: email, password: password) { (result, error) in
//                    if error != nil {
//                        print(error?.localizedDescription ?? "")
//                    } else {
//                        print("success")
//                    }
//                }
//            }
        }

            
        }
    }
//func signin() {
//    Firebase.Auth.auth().signIn(with: <#T##AuthCredential#>)(withEmail: User, password: ProFileView) { (result, error) in
//        if error != nil {
//            print(error?.localizedDescription ?? "")
//        } else {
//            print("success")
//        }
//    }
//}
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
//struct Signin_Previews: PreviewProvider {
//    static var previews: some View {
//        Signin()
//    }
//}



//struct FirebaseLoginApp: App {
//    init() {
//        FirebaseApp.configure()
//    }
//    var body: some Scene {
//        WindowGroup {
//            ContentView()
//        }
//    }
//}

//var body: some View {
//        VStack {
//            TextField("Email", text: $email)
//            SecureField("Password", text: $password)
//            Button(action: { login() }) {
//                Text("Sign in")
//            }
//        }
//        .padding()
//    }
//
//    func login() {
//        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
//            if error != nil {
//                print(error?.localizedDescription ?? "")
//            } else {
//                print("success")
//            }
//        }
//    }
//}
//
