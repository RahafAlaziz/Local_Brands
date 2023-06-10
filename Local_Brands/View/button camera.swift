//
//  button camera.swift
//  Local_Brands
//
//  Created by lujain mohammed on 14/11/1444 AH.
//


import SwiftUI
//

struct button_camera: View {
    @State var showPicker = false
    @State var selectedImage : UIImage?
    var body: some View {
        
        VStack{
            if selectedImage != nil {
                Image(uiImage: selectedImage!)
                    .resizable()
                    .frame(width: 200,height: 200)
            }
          
            
            HStack{
                Button {
                    showPicker = true
                } label: {
                    Image(systemName: "camera" )
                        .foregroundColor(Color("orange"))
                    //                    .sheet(isPresented: $showPicker ,onDismiss: nil) { ImagePicker3(selectedImage: $selectedImage , showPicker: $showPicker)
                    //
                        .padding(17)
                        .background(Color("gray."))
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10.0)
                                .stroke(lineWidth: 0.20)
                        )
                }
                
                
                Button {
                    showPicker = true
                }label: {
                    
                    Image(systemName: "camera" )
                        .foregroundColor(Color("orange"))
                        .padding(17)
                        .background(Color("gray."))
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10.0)
                                .stroke(lineWidth: 0.20))
                        .sheet(isPresented: $showPicker ,onDismiss: nil) { ImagePicker3(selectedImage: $selectedImage , showPicker: $showPicker)
                            //                                .padding(17)
                            //                                .background(Color("gray."))
                            //                                .cornerRadius(10)
                            //                                .overlay(
                            //                                    RoundedRectangle(cornerRadius: 10.0)
                            //                                        .stroke(lineWidth: 0.20))
                        }
                }
                
                Button {
                    showPicker = true
                    
                } label: {
                    Image(systemName: "camera" )
                    
                        .foregroundColor(Color("orange"))
                        .padding(17)
                        .background(Color("gray."))
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10.0)
                                .stroke(lineWidth: 0.20))
                        .sheet(isPresented: $showPicker ,onDismiss: nil) { ImagePicker3(selectedImage: $selectedImage , showPicker: $showPicker)
                            
                        }
                }
                Button {
                    showPicker = true
                    
                } label: {
                    Image(systemName: "camera" )
                        .foregroundColor(Color("orange"))
                    
                        .padding(17)
                        .background(Color("gray."))
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10.0)
                                .stroke(lineWidth: 0.20)
                            
                        )
                }
                
            }
                }
                
                
            }
        }
    


struct button_camera_Previews: PreviewProvider {
    static var previews: some View {
        button_camera()
    }
}
