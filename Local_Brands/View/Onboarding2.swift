//
//  Onboarding2.swift
//  Local_Brands
//
//  Created by Shifa Alfaisal on 17/11/1444 AH.
//

import SwiftUI

struct Onboarding2 : View {
    @State private var currentTab = 0
    @State var isLinkActive = false
    @State var toContentView = false
    
    var body: some View {
            
            TabView(selection: $currentTab,
                    
                    content:  {
                ZStack{
                    
                    Image("on-boarding-9")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .foregroundColor(.black); Rectangle()
                        .edgesIgnoringSafeArea(.all)
                        .opacity(0.0)
                    
                    VStack(){
                      
                        Text("منصة تجمع أبرز الكفاءات المبدعة في التصميم والفن بالمملكة")
                            .font(.title2)
                            .foregroundColor(Color(red: 0.3, green: 0.33, blue: 0.133))
                            .multilineTextAlignment(.center)
                            .frame(width: 330, height: 350)
                            .bold()
                            .padding(.top, 500.0)
                            .environment(\.locale, Locale(identifier: "ar"))
                            .environment(\.layoutDirection, .rightToLeft)
                    }
                    HStack{
                        Test()

                    }
                }.tag(0)
                ZStack {
                    
                    Image("on-boarding-8")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .foregroundColor(.black); Rectangle()
                        .edgesIgnoringSafeArea(.all)
                        .opacity(0.0)
                    
                    VStack(){
                        Text("أفضل المنتجات المصممة بأيادي عربية")
                            .font(.title2)
                            .foregroundColor(Color(red: 0.3, green: 0.33, blue: 0.133))
                            .multilineTextAlignment(.center)
                            .frame(width: 350, height: 350)
                            .bold()
                            .padding(.top, 500.0)
                            .environment(\.locale, Locale(identifier: "ar"))
                            .environment(\.layoutDirection, .rightToLeft)
                    }
                }.tag(1)
                ZStack {
                    
                    Image("on-boarding-7")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .foregroundColor(.black); Rectangle()
                        .edgesIgnoringSafeArea(.all)
                        .opacity(0.0)
                    
                    VStack(){
                        Text("إبداعات المصممين في مكان واحد")
                            .font(.title2)
                            .foregroundColor(Color(red: 0.3, green: 0.33, blue: 0.133))
                            .multilineTextAlignment(.center)
                            .frame(width: 350, height: 350)
                            .bold()
                            .padding(.top, 500.0)
                            .environment(\.locale, Locale(identifier: "ar"))
                            .environment(\.layoutDirection, .rightToLeft)
                    }
                    StartButtonView()
                        .padding(.top, 650.0)
                }.tag(2)
            }).tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                .ignoresSafeArea()
            
            //.navigationBarHidden(true)
            
            
            
            //}//nav
            //        .fullScreenCover(isPresented: $toContentView) {
            //            TabBar()
            //        }
            //        .navigationBarHidden(true)
        }
        
    }



struct Onboarding2_Previews: PreviewProvider {
    
    static var previews: some View {
       Onboarding2()
        }
    }




