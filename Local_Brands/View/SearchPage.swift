//
//  SearchPage.swift
//  Local_Brands
//
//  Created by Shifa Alfaisal on 17/11/1444 AH.
//

import SwiftUI

struct SearchPage: View {

        @State private var searchText = ""
//        var columns = Array(repeating: GridItem(.flexible()), count: 1)
        @State var text = ""
        var body: some View {
            NavigationView {
                
                VStack{

                    VStack(alignment: .leading){
                        SearchBar(text: $text)

                    }
                    .padding(10)
                    
                    
                    ScrollView(.vertical, showsIndicators: false){
                        
                        
//                        LazyVGrid(columns: columns, spacing: 20) {
//
//                                Spacer(minLength:99)
//                            }
                            
                        }.padding(.init(top: 14, leading: 0, bottom: 8, trailing: 10))
                        Divider()
                        
                    }
                    
                }
                
            }
        }



struct SearchPage_Previews: PreviewProvider {
    static var previews: some View {
        SearchPage()
            .environment(\.locale, Locale(identifier: "ar"))
                                .environment(\.layoutDirection, .rightToLeft)
    }
}

