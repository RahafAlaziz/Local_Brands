//
//  Favorite.swift
//  Local_Brands
//
//  Created by Fatima Alismail on 15/11/1444 AH.
//

import SwiftUI

struct Favorite: View {
    @State var top = 0
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    
                    HStack(spacing:15){
                        
                        Button(action: {
                            
                            self.top = 0
                            
                        }){
                            
                            Text("Favorite")
                                .foregroundColor(self.top == 0 ? .black : Color.black.opacity(0.45 ))
                                .fontWeight(self.top == 0 ? .bold : .none)
                                .padding(.vertical)
                            
                        }
                        
                        Button(action: {
                            
                            self.top = 1
                            
                        }){
                            
                            NavigationLink(destination: Local_Brand()) {
                                Text ("For You")}
                            .foregroundColor(self.top == 1 ? .black : Color.black.opacity(0.45 ))
                            
                            //                            Text("For You")
                            //                                .foregroundColor(self.top == 1 ? .black : Color.black.opacity(0.45 ))
                            //                                .fontWeight(self.top == 1 ? .bold : .none)
                            //                                .padding(.vertical)
                        }
                    }
                    
                    Spacer()
                    
                    HStack{
                        VStack{
                            Image("p1")
                                .resizable()
                              .aspectRatio(contentMode: .fill)
                                .frame(width: 180 ,height: 270)
                                .cornerRadius(20)
                            //    .offset(x: -0 , y: 30)
                                .shadow(color: .black.opacity(0.2), radius: 11)
                            
                            Text(" نايا")
                                .font(.title3)
                                .fontWeight(.bold)
                            Text("قميص كلاسيكي مطرز")}
                        
                        VStack{
                            
                            Image("p4")
                                .resizable()
                             .aspectRatio(contentMode: .fill)
                                .frame(width: 180 ,height: 270)
                                .cornerRadius(20)
                            // .offset(x: -0 , y: 30)
                                .shadow(color: .black.opacity(0.2), radius: 11)
                            
                            Text(" مزرود")
                                .font(.title3)
                                .fontWeight(.bold)
                            Text("هودي كلاسيكي")
                        }
                    }
                    
                    
                    HStack{
                        VStack{
                            Image("p5")
                                .resizable()
                             .aspectRatio(contentMode: .fill)
                                .frame(width: 180 ,height: 270)
                                .cornerRadius(20)
                            //    .offset(x: -0 , y: 30)
                                .shadow(color: .black.opacity(0.2), radius: 11)
                            
                            Text(" هودي مزرود")
                                .font(.title3)
                            .fontWeight(.bold)
                            Text("قميص مزرود للجنسين")
                        }
                        
                        
                        VStack{
                            
                            Image("p3")
                                .resizable()
                               .aspectRatio(contentMode: .fill)
                                .frame(width: 180 ,height: 270)
                                .cornerRadius(20)
                            //   .offset(x: -0 , y: 30)
                                .shadow(color: .black.opacity(0.2), radius: 11)
                            
                            Text(" هاكت")
                                .font(.title3)
                            .fontWeight(.bold)
                            Text("تيشيرت بعده الوان")
                    }
                }
                    .padding()
                    
                    
                        HStack{
                            VStack{
                                Image("p1")
                                    .resizable()
                                   .aspectRatio(contentMode: .fill)
                                    .frame(width: 180 ,height: 270)
                                    .cornerRadius(20)
                                //  .offset(x: -0 , y: 30)
                                    .shadow(color: .black.opacity(0.2), radius: 11)
                                
                                Text(" مزرود")
                                    .font(.title3)
                                .fontWeight(.bold)
                                Text("هودي مزين كلاسيكي")
                            }
                            VStack{
                                
                                Image("p5")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 180 ,height: 270)
                                    .cornerRadius(20)
                                //    .offset(x: -0 , y: 30)
                                    .shadow(color: .black.opacity(0.2), radius: 11)
                                
                                Text(" نايا")
                                    .font(.title3)
                                .fontWeight(.bold)
                                Text("قميص كلاسيكي")
                            }
                        }
                    }
                }
            }
        }
    }

    struct Favorite_Previews: PreviewProvider {
        static var previews: some View {
            Favorite()
        }
    }

