import SwiftUI
import ASCollectionView

struct ContentView: View {
    @ObservedObject var viewModel = PostViewModel()
    @State var isShowingSheet: Bool = false


    
    
    var body: some View {
        NavigationView{
            VStack {
                ProfileHeader()
                
                ASCollectionView(data: viewModel.posts) { post, _ in
                    PostCell(post: post)
                }
                .layout(self.layout)
                .alwaysBounceVertical()
                .padding(.top, -54)
                .edgesIgnoringSafeArea(.all)
                .shadow(color: .white, radius: 24, x: 0, y: 0)
            }
            .toolbar {
                ToolbarItemGroup(placement:
                        .navigationBarLeading) {
                            
                            
                            Button(action: {
                                isShowingSheet = true
                            }, label: {
                                Image(systemName: "plus.app")
                                    .font(.system(size: 18))
                                    .foregroundColor(Color("orange"))
                            })
                        }
             
                ToolbarItemGroup(placement:
                        .navigationBarLeading) {
                            Button(action: {
                                
                            }, label: {
                                
                                NavigationLink(destination: ProFileView()
                                    .navigationBarBackButtonHidden(true)){
                                        Text("")
                                        Image(systemName: "pencil.circle")
                                            .font(.system(size: 18))
                                        .foregroundColor(Color("orange"))}
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
                    var layout: ASCollectionLayout<Int> {
                        ASCollectionLayout(scrollDirection: .vertical, interSectionSpacing: 0) {
                            ASCollectionLayoutSection{
                                let width = NSCollectionLayoutDimension.fractionalWidth(1/3)
            
                                let layouSize = NSCollectionLayoutSize(widthDimension: width,
                                                                       heightDimension: .fractionalHeight(1.0))
            
                                let item = NSCollectionLayoutItem(layoutSize: layouSize)
            
            
                                let inset = CGFloat(0.5)
                                item.contentInsets = NSDirectionalEdgeInsets(top: inset, leading: inset,
                                                                             bottom: inset, trailing: inset)
            
                                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                                                      heightDimension: width)
            
            
                                let itemGroup = NSCollectionLayoutGroup.horizontal(layoutSize: itemSize, subitems: [item])
            
                                return NSCollectionLayoutSection(group: itemGroup)
            
                            }
                        }
                    }
                }
     
