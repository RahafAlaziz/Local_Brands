//
//  ImagePicker3.swift
//  Local_Brands
//
//  Created by lujain mohammed on 17/11/1444 AH.
//

import PhotosUI
import SwiftUI

struct ImagePicker3: View {
    @State var selectedItems: [PhotosPickerItem] = []
    @State var data: Data?
    
    var body: some View {
        VStack {
            if let data = data, let uiimage = UIImage(data: data) {
                Image(uiImage: uiimage)
                    .resizable()
            }
            Spacer()
            PhotosPicker(
                selection: $selectedItems,
                maxSelectionCount: 1,
                matching: .images
            ) {
                Text("pick photo")
            }
            .onChange(of: selectedItems) {newValue in
                guard let item = selectedItems.first else { return
                }
                item.loadTransferable(type: Data.self) { result in switch result {
                case .success(let data) :
                    if let data = data {
                        self.data = data
                    }else{
                        print("Data in nil")
                    }
                case .failure(let failure):
                    fatalError("\(failure)")
                }
                }
            }
        }
    }
}

                
                struct ImagePicker_Previews: PreviewProvider {
                    static var previews: some View {
                        ImagePicker3()
                    }
                }
