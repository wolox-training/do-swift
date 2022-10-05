//
//  MainNavigationView.swift
//  Wbooks
//
//  Created by Daniel Ordoñez Arce on 26/09/22.
//

import SwiftUI

struct MainNavigationView: View{
    @EnvironmentObject var viewRouter: ViewRouter
    @State private var selection = 0
    init() {
           UITabBar.appearance().backgroundColor = UIColor(Color("Alabaster"))
              }
   
    var body: some View {
        switch viewRouter.currentScreen {
        case .login:
            LoginView()
        case .library:
            NavigationStack{
                TabView(selection:$selection ){
                    LibraryView()
                        .tabItem {
                            Image(systemName: "books.vertical")
                            Text("Library")
                        }
                        .tag(0)
                    Text("WishList")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .tabItem {
                            Image(systemName: "star.leadinghalf.filled")
                            Text("WishList")
                        }
                        .tag(1)
                    Text("Add New")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .tabItem {
                            Image(systemName: "plus.circle")
                            Text("Add New")
                        }
                        .tag(2)
                    Text("Rentals")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .tabItem {
                            Image(systemName: "checkmark.diamond")
                            Text("Rentals")
                        }
                        .tag(3)
                }
                .accentColor(Color("AzureRadiance"))
                .overlay(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)).stroke(Color.blue,lineWidth: 2))
                
            }
        }
    }
}

struct MainNavigationView_Previews: PreviewProvider{
    static var previews: some View{
        MainNavigationView().environmentObject(ViewRouter())
    }
}
