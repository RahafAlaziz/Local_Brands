//
//  ProfileHeader.swift
//  LocalBrands
//
//  Created by lujain mohammed on 04/11/1444 AH.
//

import SwiftUI

struct ProfileHeader: View {
    var body: some View {
        NavigationView{
            ZStack {
                VStack{
                    
                    Divider()
                    Spacer()
                    VStack{
                        Spacer()
                        
                        Image("0")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 151, height: 114)
                            .clipShape(Circle())
                            .clipped()
                            .overlay(Circle().stroke(Color.white, lineWidth: 4))
                            .padding(.horizontal, 700)
                        
                        Text("مزرود متجر ملابس، يشحن لجميع دول العالم،                                                            بإمكانك التسوق أون لاين عن طريق موقعنا الالكتروني")
                            .font(.system(size: 14))
                            .foregroundColor(Color("gray"))
                            .padding(2)
                        HStack{
                            Image(systemName: "globe")
                                .font(.system(size: 18))
                                .foregroundColor(Color("orange"))
                            
                            

                                //PostCell()
                                Link("mazrood", destination: URL(string: "www.mazrood.com")!)                            }
                        
                        
                        
                        Spacer()
                    }
                    Spacer()
                    
                    
                }
                
            }                    .toolbar {
                ToolbarItemGroup(placement:
                        .navigationBarLeading) {
                            
                            
                            Button(action: {
                                
                            }, label: {
                                Image(systemName: "plus.app")
                                    .font(.system(size: 18))
                                    .foregroundColor(Color("orange"))
                            })
                        }
                
     //
            
                //
                ToolbarItemGroup(placement:
                        .navigationBarLeading) {
                            Button(action: {
                                
                            }, label: {
                                Image(systemName: "pencil.circle")
                                    .font(.system(size: 18))
                                    .foregroundColor(Color("orange"))
                            })
                        }
                
                ToolbarItem(placement:
                        .navigationBarTrailing) {
                            Button(action: {
                                
                            }, label: {
                                Image(systemName:"chevron.forward")
                                    .font(.system(size: 18))
                                    .foregroundColor(Color("orange"))
                            })
                        }
            }
            .navigationTitle("MZROD")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
