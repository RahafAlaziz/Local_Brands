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
                        
                        Image("0")
                        
                        
                        Text("لمشاهدة التفاصيل")
                            .bold()
                            .foregroundColor(Color.white)
                            .frame(width: 150, height: 39)
                            .background(Color("orange"))
                            .cornerRadius(10)
                    }
                        .sheet(isPresented: $showSheet) {
                            VStack{
                                TabView1()
                               
                                Text("قميص مزرود")
                                Text("٣١٧ ر.س")
                                    .presentationDetents([.large, .medium, .fraction(0.45)])
                                
                                
                                Button  { print("s")
                                    showSheet.toggle()
                                } label: {
                                    
                                    Text("اشتر الآن من موقع المتجر")
                                        .bold()
                                        .foregroundColor(Color.white)
                                        .frame(width: 214.13, height: 39)
                                        .background(Color("orange"))
                                        .cornerRadius(10)
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

}
