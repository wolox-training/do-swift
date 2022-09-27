//
//  CustomNavBarContainerView.swift
//  Wbooks
//
//  Created by Daniel Ordoñez Arce on 27/09/22.
//

import SwiftUI

struct CustomNavBarContainerView<Content: View>: View {
    let content: Content
    @State private var showBackButton: Bool = true
    @State private var title: String = ""
    @State private var showSearchButton: Bool = true
    
    init(@ViewBuilder content:() -> Content) {
        self.content = content()
    }
    var body: some View {
        VStack(spacing:0){
            CustomNavBarView(showBackButton: showBackButton, title: title,showSearchButton:showSearchButton)
            content
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .onPreferenceChange(CustomNavBarTitlePreferenceKeys.self,perform:   {value in self.title = value
            
        })
        .onPreferenceChange(CustomNavBarBackButtomHiddenPreferenceKeys.self,perform:   {value in self.showBackButton = !value
            
        })
        .onPreferenceChange(CustomNavBarSearchButtomShowPreferenceKeys.self,perform:   {value in self.showSearchButton = value
            
        })
        
    }
}

struct CustomNavBarContainerView_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavBarContainerView{
            ZStack{
                Color.green.ignoresSafeArea()
                
                Text("hello")
                    .foregroundColor(.white)
                    .customNavigationTitle("new title")
                    .customNavigationBarBackButtomHidden(true)
                    .CustomNavigationBarSearchButtomShow(true)
            }
        }
    }
}
