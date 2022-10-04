//
//  CustomNavBarView.swift
//  Wbooks
//
//  Created by Daniel Ordoñez Arce on 27/09/22.
//

import SwiftUI

struct CustomNavBarView: View {
    
    @Environment(\.presentationMode) var presemtationMode
    let showBackButton: Bool
    let title: String
    let showSearchButton:Bool
    
    var body: some View {
        HStack{
            if showBackButton {
                backButton
            }else {
                bellButton
            }
            Spacer()
            titleSection
            Spacer()
            if showSearchButton{
                searchButton
            }
        }
        .padding()
        .accentColor(.white)
        .foregroundColor(.white)
        .font(.headline)
        .background(Color("PictonBlue").ignoresSafeArea(edges:.top))
    }
    
}

struct CustomNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CustomNavBarView(showBackButton: false, title: "Title here",showSearchButton: true )
            Spacer()        }
    }
}

extension CustomNavBarView{
    private var backButton: some View {
        Button(action:{presemtationMode.wrappedValue.dismiss()},label:{Image(systemName: "chevron.left")})
    }
    private var titleSection: some View {
        Text(title)
            .font(Font.custom("inter", size: 17))
            .lineSpacing(22)
            .fontWeight(.medium)
    }
    private var searchButton: some View {
        Button(action:{},label:{Image(systemName: "magnifyingglass")})
    }
    private var bellButton: some View {
        Button(action:{},label:{Image(systemName: "bell")})
    }
}
