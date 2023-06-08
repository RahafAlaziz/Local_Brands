//
//  PostCell.swift
//  LocalBrands
//
//  Created by lujain mohammed on 10/11/1444 AH.
//

import SwiftUI

struct PostCell: View {

    let post: Post
    
    var body: some View {
        ZStack {
            GeometryReader { geometry in
//                HStack{
//                    HStack {
//                        Image("1")
//                            .resizable()
//                            .frame(width: 50, height: 50, alignment: .top)
//                            .cornerRadius(50)
//                        
//                        Text("Mazrod")
//                            .font(.callout)
//                            .fontWeight(.bold)
//                        
//                    }
//                    Spacer()
//                }
                    
                
                        NavigationLink(destination: {

                            ExtractedView(post: post)
                }, label: {
                    ZStack{
                        Image  (self.post.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .clipped()
                    }
                })
            
            
            }
        }
    }
                }
