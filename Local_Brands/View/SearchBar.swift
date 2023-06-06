//
//  SearchBar.swift
//  LocalBrands
//
//  Created by Shifa Alfaisal on 10/11/1444 AH.
//


//
//  SearchBar.swift
//  Snapcolor
//
//  Created by Shifa Alfaisal on 11/06/1444 AH.
//

import SwiftUI

struct SearchBar: View {
    @State var text: String
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
                    ).onTapGesture {
                        self.isEditing = true
                    }
                
            }
            Spacer()
        }
        .padding()
        }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: "")
    }
}
