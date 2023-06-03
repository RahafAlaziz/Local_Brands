//
//  button camera.swift
//  Local_Brands
//
//  Created by lujain mohammed on 14/11/1444 AH.
//


import SwiftUI

struct button_camera: View {
    var body: some View {
         HStack{
                                    Button {
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
                                    Button {
            
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
            
                                    Button {
            
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
                                    Button {
            
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

struct button_camera_Previews: PreviewProvider {
    static var previews: some View {
        button_camera()
    }
}
