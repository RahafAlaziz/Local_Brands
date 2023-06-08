//
//  Test.swift
//  Local_Brands
//
//  Created by Shifa Alfaisal on 17/11/1444 AH.
//

import SwiftUI

struct OnBordingStep{
    let image: String
    let title: String
    let description: String
}

private let onBordingsteps = [
    OnBordingStep(image: "Welcome", title: "Scan", description: "With your phone "),
OnBordingStep(image: "Scan", title: "Save", description: "as Image ")
]

struct Test: View {
    @State private var currentStep = 0
    
//    init() {
//        UIScrollView.appearance().bounces=false
//    }
    
    var body: some View {
        // ZStack { Color.white.ignoresSafeArea()
        ZStack {
//            Color("Background")
//                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack{
                    Spacer()
//                    Button(action: {
//                        self.currentStep = onBordingsteps.count - 1
//                    }){
                    NavigationLink(
                        destination: Local_Brand().navigationBarHidden(true),
                        label: {
                            Text("تخطي")
                        })
                        //                            .padding(16)
                            .foregroundColor(Color(red: 0.174, green: 0.189, blue: 0.059))
                    

                    }
                }
                
                .padding(.top, 650.0)
                .padding(.trailing, 20.0)


                .buttonStyle(PlainButtonStyle())
            }}}

    struct Test_Previews: PreviewProvider {
        
        static var previews: some View {
           Test()
            }
        }


