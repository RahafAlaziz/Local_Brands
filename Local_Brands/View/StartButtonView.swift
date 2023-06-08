//
//  StartButtonView.swift
//  Local_Brands
//
//  Created by Shifa Alfaisal on 17/11/1444 AH.
//

import SwiftUI

struct StartButtonView: View {
    @AppStorage("onBoarding") private var isOnBoardingViewActive = true
    var body: some View {
        
//        NavigationLink {
//            Local_Brand()
//        } label: {
//         
//                HStack (spacing:8) {
//                    Text("التالي")
//                    Image(systemName: "arrow.right")
//                }
//                .imageScale(.large)
//                .padding(.horizontal,16)
//                .padding(.vertical,10)
//                .background (
//                    Capsule()
//                        .foregroundColor(Color(red: 0.471, green: 0.397, blue: 0.251))            )
//           
//        }

        NavigationLink {
            Local_Brand()
                .navigationBarHidden(true)
        }
        
    label: {
        
        HStack (spacing:8) {
            Text("التالي")
                .foregroundColor(.white)
            Image(systemName: "arrow.right")
                .foregroundColor(.white)

        }
        .navigationBarHidden(true)
        
        .imageScale(.large)
        .padding(.horizontal,16)
        .padding(.vertical,10)
        .background (
            Capsule()
                .foregroundColor(Color(red: 0.471, green: 0.397, blue: 0.251))            )
            

            }
//    .navigationBarHidden(true)

        
        
        
//        Button () {
//            isOnBoardingViewActive = false
//        } label: {
//            HStack (spacing:8) {
//                Text("التالي")
//                Image(systemName: "arrow.right")
//            }
//            .imageScale(.large)
//            .padding(.horizontal,16)
//            .padding(.vertical,10)
//            .background (
//                Capsule()
//                    .foregroundColor(Color(red: 0.471, green: 0.397, blue: 0.251))            )
//        }
//        .accentColor(.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}

