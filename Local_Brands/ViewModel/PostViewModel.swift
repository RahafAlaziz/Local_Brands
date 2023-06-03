//
//  PostViewModel.swift
//  Local_Brands
//
//  Created by lujain mohammed on 14/11/1444 AH.
//


import Foundation

class PostViewModel: ObservableObject {
    @Published var posts = [Post]()

    init() {
        posts.append(Post(id: 1, imageName: "1"))
        posts.append(Post(id: 2, imageName: "2"))
        posts.append(Post(id: 3, imageName: "3"))
        posts.append(Post(id: 4, imageName: "4"))
        posts.append(Post(id: 5, imageName: "5"))
        posts.append(Post(id: 6, imageName: "6"))
        posts.append(Post(id: 7, imageName: "7"))
        posts.append(Post(id: 8, imageName: "8"))
        posts.append(Post(id: 9, imageName: "9"))
        posts.append(Post(id: 10, imageName: "10"))
        posts.append(Post(id: 11, imageName: "11"))
        posts.append(Post(id: 12, imageName: "12"))

    }
}
//
//import SwiftUI
//
//struct Grid: View {
//    @State private var showModel = false
//    @State var selectedImage = ""
//
//    var images: [String] =
//    ["1" ,"2" ,"3" ,"4" ,"5" ,"6" ,"7" ,"8" ,"9" ,"10" ,"11" ,"12" ]
//
//    var columnGrid: [GridItem] = [GridItem(.flexible(),
//    spacing: 1), GridItem(.flexible(), spacing: 1),
//    GridItem(.flexible(), spacing: 1)]
//
//    var body: some View {
//        LazyVGrid(columns: columnGrid, spacing: 1){
//            ForEach(images.indices, id: \.self){ index in
//                Image(images[index])
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: (UIScreen.main.bounds.width / 3) - 1, height:
//                        (UIScreen.main.bounds.width / 3) - 1)
//                    .clipped()
//                    .onTapGesture {
//                        selectedImage = images[index]
//                        showModel = true
//                    }
//            }
//        }
//        .fullScreenCover(isPresented: $showModel){
//        }
//    }
//            }
//            struct Grid_Previews: PreviewProvider {
//    static var previews: some View {
//        Grid()
//    }
//}
