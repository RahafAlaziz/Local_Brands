//
//  TabView.swift
//  Local_Brands
//
//  Created by lujain mohammed on 15/11/1444 AH.
//

import SwiftUI

struct TabView1: View {
    var body: some View {
        TabView {
            Image("1")
            Image("2")
            Image("3")
            Image("4")
              
        }
        
        .tabViewStyle(.page)
//        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}


struct TabView1_Previews: PreviewProvider {
    static var previews: some View {
        TabView1()
    }
}

