//
//  ExtractedView.swift
//  Local_Brands
//
//  Created by lujain mohammed on 19/11/1444 AH.
//

import SwiftUI

struct ExtractedView: View {
    let post: Post
    @State private var isShowingConfirmation = false

    var body: some View {
        GeometryReader { geometry in
            
            VStack{
                Button{
                    isShowingConfirmation = true
                } label: {
                    Image(systemName: "ellipsis")
                        .foregroundColor(Color("orange"))
                        .padding(.vertical,70)
                        .padding(.horizontal,15)
                }
                .confirmationDialog("سيتم حذف الفيديو", isPresented: $isShowingConfirmation, titleVisibility: .visible) {
                    Button("حذف", role: .destructive) { print("item Deleted") }


                    
                }
                
                Image  (self.post.imageName)
                    .resizable()
                    .frame(width: 500,height: 500)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .clipped()
                
            }
        }
    }
}
