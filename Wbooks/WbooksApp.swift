//
//  WbooksApp.swift
//  Wbooks
//
//  Created by Daniel Ordoñez Arce on 15/09/22.
//

import SwiftUI

@main
struct WbooksApp: App {
    @StateObject var viewRouter = ViewRouter()
    var body: some Scene {
        WindowGroup {
            MainNavigationView().environmentObject(viewRouter)
        }
    }
}
