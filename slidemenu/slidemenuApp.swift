//
//  slidemenuApp.swift
//  slidemenu
//
//  Created by Jill on 2021/3/12.
//

import SwiftUI

@main
struct slidemenuApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(dataModel())
        }
    }
}
