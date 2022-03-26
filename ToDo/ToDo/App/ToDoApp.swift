//
//  ToDoApp.swift
//  ToDo
//
//  Created by Elliot Rabaroust-Lefèvre on 13/03/2022.
//

import SwiftUI
import Firebase

@main
struct ToDoApp: App {
    //@UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}




