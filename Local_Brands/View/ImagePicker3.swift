//
//  ImagePicker3.swift
//  Local_Brands
//
//  Created by lujain mohammed on 17/11/1444 AH.
//

import Foundation
import SwiftUI
import UIKit

struct ImagePicker3: UIViewControllerRepresentable {
    
    @Binding var selectedImage : UIImage?
    @Binding var showPicker : Bool
    func makeUIViewController(context: Context) -> some UIViewController {
        
        let ImagePicker3 = UIImagePickerController()
        ImagePicker3.sourceType = .photoLibrary
        ImagePicker3.delegate = context.coordinator
        
        return ImagePicker3
    }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    func makeCoordinator() -> coordinator {
        return coordinator (self)
    }
}
class coordinator : NSObject, UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    
    var parent: ImagePicker3
    
    init(_ picker:ImagePicker3){
        
        self.parent = picker
    }
    
    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any])
    {
        // run cod when user selected image
        print("image selected")
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            DispatchQueue.main.async {
                self.parent.selectedImage = image
            }
        }
        
        //Dis the picker
        parent.showPicker = false
        
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        //run code when user has cancelled the picker ui
        print("cancelled")
        //Dis the picker
        parent.showPicker = false


                
                struct ImagePicker_Previews: PreviewProvider {
                    static var previews: some View {
                        button_camera()
                    }
                }


        //        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
        //            DispatchQueue.main.async {
        //                self.parent.selectedImage = image
        //            }
                   
                }
                
            }


        //
        //    @State var selectedItems: [PhotosPickerItem] = []
        //    @State var data: Data?
        //
        //    var body: some View {
        //        VStack {
        //            if let data = data, let uiimage = UIImage(data: data) {
        //                Image(uiImage: uiimage)
        //                    .resizable()
        //            }
        //            Spacer()
        //            PhotosPicker(
        //                selection: $selectedItems,
        //                maxSelectionCount: 1,
        //                matching: .images
        //            ) {
        //                Text("pick photo")
        //            }
        //            .onChange(of: selectedItems) {newValue in
        //                guard let item = selectedItems.first else { return
        //                }
        //                item.loadTransferable(type: Data.self) { result in switch result {
        //                case .success(let data) :
        //                    if let data = data {
        //                        self.data = data
        //                    }else{
        //                        print("Data in nil")
        //                    }
        //                case .failure(let failure):
        //                    fatalError("\(failure)")
        //                }
        //                }
        //            }
        //        }
        //    }
        //}
