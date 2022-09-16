//
//  ContentView.swift
//  Wbooks
//
//  Created by Daniel Ordoñez Arce on 15/09/22.
//

import SwiftUI

struct LoginView: View {
    struct User{
         var username: String = ""
         var password: String = ""
    }
    @State private var user: User = .init()
    
    var body: some View {
        ZStack {
            imagenBackGround
            VStack(alignment: .center) {
                imagenLogo
                usernameTxtVw
                passwordTxtVw
                signInBtVW
                Spacer()
            }
            .padding(.horizontal, 36.0)
            .disableAutocorrection(true)
            .textInputAutocapitalization(.never)
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

private extension LoginView {
    var imagenBackGround: some View{
        Image("BackgroundLogin")
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
    }
    var imagenLogo: some View {
        Image("Logo")
            .padding(.top, 93.0)
            .padding(.bottom, 51.0)
            
    }
    var usernameTxtVw: some View{
        TextField("Username", text: $user.username)
            .font(Font.custom("inter", size: 15))
            .fontWeight(.medium)
            .lineSpacing(18)
            .padding( 17.0)
            .frame(width: 303.0, height: 52.0)
            .background(Color.white)
            .textContentType(.username)
            .border(Color.black, width: 0.1)
            .padding(.bottom, 20.0)
            
    }
    var passwordTxtVw: some View{
        SecureField("Password", text: $user.password)
            .font(Font.custom("inter", size: 15))
            .fontWeight(.medium)
            .lineSpacing(18)
            .padding( 17.0)
            .frame(width: 303.0, height: 52.0)
            .background(Color.white)
            .textContentType(.password)
            .border(Color.black, width: 0.1)
            .padding(.bottom, 20.0)
    }
    var signInBtVW: some View{
        Button(action: handleOnSignIn) {
            Text("SIGN IN").foregroundColor(Color("pictonBlue"))
        }
        .frame(width: 303.0, height: 52.0)
        .background(Color.white)
        .cornerRadius(27)
        .overlay(
                    RoundedRectangle(cornerRadius: 27)
                        .stroke(Color("pictonBlue"), lineWidth: 2)
                )
        
    }
}

private extension LoginView {
    func handleOnSignIn (){
        print ("The user: \(user)")
    }
}
