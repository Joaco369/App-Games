//
//  IphoneIpadFirebaseApp.swift
//  IphoneIpadFirebase
//
//  Created by Joaquin Villarreal on 14/04/2024.
//

import SwiftUI

@available(iOS 16.0, *)
@main
struct IphoneIpadFirebaseApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        let login = FirebaseViewModel()
        WindowGroup {
            ContentView().environmentObject(login)
        }
    }
}
