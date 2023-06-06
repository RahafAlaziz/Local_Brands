//
//  SearchBar.swift
//  Local_Brands
//
//  Created by Shifa Alfaisal on 17/11/1444 AH.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    @State private var isEditing = false
    
    
    var body: some View {
        VStack{
          
            HStack {
                
                
                TextField("ابحث عن منتج، ماركة", text: $text)
                    .padding(15)
                    .padding(.leading, 25)
                    .background(Color(.systemGray6))
                    .foregroundColor(.black)
                    .cornerRadius(10)
                    .overlay(
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
//
                                .padding(.leading, 5)
                            
                            
                            if isEditing {
                                Button(action: {
                                    self.text = ""
                                }, label: {
                                    Image(systemName: "multiply.circle.fill")
                                        .foregroundColor(.gray)
                                        .padding(.trailing, 8)
                                })
                            }
                            
                        }
                     
                    }
                ).onTapGesture {
                    self.isEditing = true
                }
            
        }    }
}


