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
