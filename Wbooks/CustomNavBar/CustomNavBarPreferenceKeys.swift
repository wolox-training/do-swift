//
//  CustomNavBarPreferenceKeys.swift
//  Wbooks
//
//  Created by Daniel Ordoñez Arce on 27/09/22.
//

import Foundation
import SwiftUI

struct CustomNavBarTitlePreferenceKeys: PreferenceKey{
    
    static var defaultValue: String = ""
    
    static  func reduce (value: inout String, nextValue: ()-> String){
        value = nextValue()
    }
}
struct CustomNavBarBackButtomHiddenPreferenceKeys: PreferenceKey{
    
    static var defaultValue: Bool = false
    
    static  func reduce (value: inout Bool, nextValue: ()-> Bool){
        value = nextValue()
    }
}
struct CustomNavBarSearchButtomShowPreferenceKeys: PreferenceKey{
    
    static var defaultValue: Bool = true
    
    static  func reduce (value: inout Bool, nextValue: ()-> Bool){
        value = nextValue()
    }
}
extension View {
    func customNavigationTitle(_ title:String)-> some View{
        preference(key:CustomNavBarTitlePreferenceKeys.self,value: title )
    }
    func customNavigationBarBackButtomHidden(_ hidden: Bool) -> some View {
        preference(key: CustomNavBarBackButtomHiddenPreferenceKeys.self, value: hidden)
    }
    func CustomNavigationBarSearchButtomShow(_ hidden: Bool) -> some View {
        preference(key: CustomNavBarSearchButtomShowPreferenceKeys.self, value: hidden)
    }
    func customNavBarItems (title: String="", backButtonHidden:Bool=false, searchButtonsShow:Bool=true) -> some View {
        self
            .customNavigationTitle(title)
            .customNavigationBarBackButtomHidden(backButtonHidden)
            .CustomNavigationBarSearchButtomShow(searchButtonsShow)
    }
}
