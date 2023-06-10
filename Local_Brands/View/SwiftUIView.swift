//
//  SwiftUIView.swift
//  Local_Brands
//
//  Created by rahaf on 21/11/1444 AH.
//

import SwiftUI
import Firebase

struct SwiftUIView: View {
    
    init() {
        
        FirebaseApp.configure()
        
        print("Configure firebase")
    }
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
