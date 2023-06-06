//
//  rec.swift
//  Local_Brands
//
//  Created by lujain mohammed on 17/11/1444 AH.
//

import SwiftUI

struct rec: View {
    var body: some View {
      
        
        ZStack{
            RoundedRectangle(cornerRadius: 8)
                .frame(width: 50 ,height: 50)
                .foregroundColor(Color.red)
            Image("9")
                .frame(width: 30 ,height: 30)
                
                
        }
    }
}

struct rec_Previews: PreviewProvider {
    static var previews: some View {
        rec()
    }
}
