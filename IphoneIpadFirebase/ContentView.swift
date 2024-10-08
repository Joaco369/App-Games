//
//  ContentView.swift
//  IphoneIpadFirebase
//
//  Created by Joaquin Villarreal on 14/04/2024.
//

import SwiftUI

@available(iOS 16.0, *)
struct ContentView: View {
    
    @EnvironmentObject var loginShow: FirebaseViewModel
    
    var body: some View {
        return Group{
            if loginShow.show {
                Home()
                    .edgesIgnoringSafeArea(.all)
            } else {
                Login()
            }
        }.onAppear(){
            if (UserDefaults.standard.object(forKey: "sesion")) != nil {
                loginShow.show = true
            }
        }
    }
}

