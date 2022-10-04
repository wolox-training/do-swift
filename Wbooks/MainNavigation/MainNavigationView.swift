//
//  MainNavigationView.swift
//  Wbooks
//
//  Created by Daniel Ordoñez Arce on 26/09/22.
//

import SwiftUI

struct MainNavigationView: View{
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        switch viewRouter.currentScreen {
        case .login:
            LoginView()
        case .library:
            LibraryView()
        }
    }
}

struct MainNavigationView_Previews: PreviewProvider{
    static var previews: some View{
        MainNavigationView().environmentObject(ViewRouter())
    }
}
