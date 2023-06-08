//
//  ProfileHeader.swift
//  LocalBrands
//
//  Created by lujain mohammed on 04/11/1444 AH.
//

import SwiftUI

struct ProfileHeader: View {
    //    @Environment(\.dismiss) var dismiss
    @State var isShowingSheet: Bool = false
    @State private var showingDetail = false
    
    
    var body: some View {
        NavigationView{
            ZStack {
                VStack{
                   

                    Divider()
                    
                    VStack(alignment: .center){
                        
                        Image("0")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 151, height: 114)
                            .clipShape(Circle())
                            .clipped()
                            .overlay(Circle().stroke(Color.white, lineWidth: 4))
                        
                        Text("مزرود متجر ملابس، يشحن لجميع دول العالم،                                                            بإمكانك التسوق أون لاين عن طريق موقعنا الالكتروني")
                            .font(.system(size: 14))
                            .foregroundColor(Color("gray"))
                            .multilineTextAlignment(.center)
                            .padding(2)
                        
                        HStack{
                            Image(systemName: "globe")
                                .font(.system(size: 18))
                                .foregroundColor(Color("orange"))
                            
                            
                            
                            Link("mazrood", destination: URL(string: "www.mazrood.com")!)                            }
                        
                        
                        
                        Spacer()
                    }
                    Spacer()
                    
                    
                }
                .sheet(isPresented: $isShowingSheet ){
                }
            }
        }
    }
    
}

struct ProfileHeader_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeader()
    }
}
