//
//  Local_BrandsApp.swift
//  Local_Brands
//
//  Created by lujain mohammed on 14/11/1444 AH.
//

import SwiftUI
import Firebase

@main
struct Local_BrandsApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var Delegate
    
    var body: some Scene {
        WindowGroup {
            HomePage()
        }
    }
}
 
class AppDelegate: NSObject, UIApplicationDelegate{
    
    internal func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey:Any]? = nil)->Bool {
        
        FirebaseApp.configure()
        
        return true

    }
    
}
