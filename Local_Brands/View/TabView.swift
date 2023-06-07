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
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(20)
                Image("2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(20)

                Image("3")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(20)

                Image("4")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(20)

            
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

