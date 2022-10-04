//
//  ContentView.swift
//  Wbooks
//
//  Created by Daniel Ordoñez Arce on 15/09/22.
//
import SwiftUI

struct LibraryView: View {
    var body: some View {
        CustomNavView{
            ScrollView{
                LazyVStack {
                    CustomNavLink {
                        Text("Destination1")
                            .customNavigationTitle("BOOK DETAIL")
                            .CustomNavigationBarSearchButtomShow(false)
                    } label: {
                        itemList
                    }
                    CustomNavLink {
                        Text("Destination2")
                            .customNavigationTitle("BOOK DETAIL")
                            .CustomNavigationBarSearchButtomShow(false)
                    } label: {
                        itemList
                    }
                }.padding(.horizontal,24)
                    .padding(.top,20)
            }.background(Color("AliceBlue"))
                .customNavigationTitle("LIBRARY")
                .customNavigationBarBackButtomHidden(true)
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}

var itemList: some View{
    HStack {
        Image("CoverLittleBird")
            .resizable()
            .scaledToFill()
            .frame(maxWidth:48.12,maxHeight: 70)
            .padding(.trailing,12)
        
        VStack(alignment: .leading) {
            Text("A Little Bird Told Me")
                .padding(.top,5)
                .foregroundColor(Color("Tundora"))
                .font(Font.custom("inter", size: 16))
                .fontWeight(.bold)
                .lineSpacing(19)
            Text(String("Timothy Cross"))
                .foregroundColor(Color("Gray"))
                .font(Font.custom("inter", size: 15))
                .fontWeight(.regular)
                .lineSpacing(18)
            Spacer()
        }
        
        Spacer()
    }
    .padding(.horizontal,25)
    .padding(.vertical,15)
    .background(Color.white)
    .cornerRadius(7)
    .shadow(color: .black.opacity(0.1), radius: 4 ,x:0 ,y:0.5)
    
}
