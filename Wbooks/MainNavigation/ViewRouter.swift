//
//  ViewRouter.swift
//  Wbooks
//
//  Created by Daniel Ordoñez Arce on 26/09/22.
//

import SwiftUI
class ViewRouter: ObservableObject {
   @Published var currentScreen: Screens = .login
}
