//
//  Edit.swift
//  LocalBrands
//
//  Created by Fatima Alismail on 04/11/1444 AH.


import SwiftUI

struct ProFileView: View {

    @State private var ProFileView = ""
    @State var changeProFileImage = false
    @State var openCameraRoll = false
    @State var imageSelected = UIImage()
    @State private var showingAlert = false
    @State private var User = ""
    @State private var NO = ""
           
    var body: some View {
        NavigationView {

            ZStack {Color("offwhite").ignoresSafeArea(.all)
                VStack{
                    VStack{
                        Spacer()
                        ZStack(alignment: .bottomTrailing){
                            Button(action: {
                                changeProFileImage = true
                                openCameraRoll = true
                                
                                
                                
                            }, label: {
                                if changeProFileImage {
                                    Image(uiImage: imageSelected)
                                        .resizable()
                                        .frame(width: 120, height: 120)
                                        .clipShape(Circle())
                                    
                                } else {
                                    
                                    Image("proFileImage")
                                        .resizable()
                                        .frame(width: 120, height: 120)
                                        .clipShape(Circle())
                                }
                            })
                            
                            Image(systemName: "plus")
                                .frame(width: 30,height: 30)
                                .foregroundColor(.white)
                                .background(Color.gray)
                                .clipShape(Circle())
                            
                            
                        }
                        
                        .sheet(isPresented: $openCameraRoll){
                            ImagePicker(selectedImage: $imageSelected   , sourceType: .photoLibrary )
                            
                        }
                        Spacer()
                    }
                    
                    VStack{

                        TextField("اسم المتجر", text: $NO)
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


                        TextField("رابط موقع المتجر", text: $User)
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



                        TextField("نبذه مختصره عن المتجر", text: $ProFileView)
                            .multilineTextAlignment(.trailing)
                            .padding(.trailing,1.0)
                            .padding(.bottom, 77.0)
                            .frame(height: 100)
                            .padding(7)
                            .background(.white)
                            .overlay {
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(.white, lineWidth:4)
                            }
                            .padding(.horizontal)
                            .padding(2)
                        Spacer()

                    }



                    Button(action: { }, label: {
                        Text("أنشئ حساب المتجر")
                            .frame(height: 50)
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.white)
                            .background(LinearGradient(gradient: Gradient(colors: [Color("orange"), Color("orange")]), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(8)
                            .padding()
                    }

                    ) }
                .scrollContentBackground(.hidden)

            }   .navigationBarTitle("تحرير ملف المتجر الشخصي", displayMode: .inline)
                
                .scrollContentBackground(.hidden)


        }
    }
}
struct Edit_Previews: PreviewProvider {
    static var previews: some View {
        ProFileView()
    }
}

