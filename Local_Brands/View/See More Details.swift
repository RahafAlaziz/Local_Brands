//
//  See More Details.swift
//  LocalBrands
//
//  Created by lujain mohammed on 13/11/1444 AH.
//

import SwiftUI

struct See_More_Details: View {
    @State private var showSheet: Bool = false
    @State private var showSheet1: Bool = false
    
    
    var body: some View {
        
        ZStack {
            Button  { print("s")
                showSheet.toggle()
            } label: {
                
                VStack{
                    ZStack{
                        Rectangle()
                            .fill(Color.white)                     .frame(width: 50 , height: 50, alignment: .trailing)
                            .cornerRadius(10)
                        
                        Image("profilepic")
                            .resizable()
                            .frame(width: 44 , height: 44, alignment: .trailing)
                            .cornerRadius(7)
                        
                            .listRowInsets(EdgeInsets())
                            .aspectRatio(contentMode: .fit)
                        //                            padding(.trailing)
                    }.padding(.leading, 90)
                    
                    Text("لمشاهدة التفاصيل")
                        .bold()
                        .foregroundColor(Color.white)
                        .frame(width: 160, height: 28)
                        .background(Color("orange"))
                        .cornerRadius(7)
                        .padding(.trailing,20)
                }
                .sheet(isPresented: $showSheet) {

                        TabView1()
                        
                        Text("قميص مزرود")
                        .font(.title3)
                        .foregroundColor(Color("green"))
                        .padding(.leading, 250)

                        Text("٣١٧ ر.س")
                        .font(.title3)
                        .foregroundColor(Color("gold"))
                        .padding(.leading, 250)
                            .presentationDetents([.large, .medium, .fraction(0.45)])
                        
                        
                        Button  { print("s")
                            showSheet.toggle()
                        } label: {
                            Text("اشتر الآن من موقع المتجر")
                                .bold()
                                .foregroundColor(Color.white)
                                .frame(width: 214.13, height: 39)
                                .background(Color("orange"))
                                .cornerRadius(7)
                        }
                    }
                }
            }
        }
        
    }
    

    
    
    struct See_More_Details_Previews: PreviewProvider {
        static var previews: some View {
            See_More_Details()
        }
    }
    
    

