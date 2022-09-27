//
//  CustomNavView.swift
//  Wbooks
//
//  Created by Daniel Ordoñez Arce on 27/09/22.
//

import SwiftUI

struct CustomNavView<Content:View>: View {
    let content: Content
    init(@ViewBuilder content: ()->Content){
        self.content=content()
    }
    var body: some View {
        NavigationStack(){
            CustomNavBarContainerView{
                content
            }
            .navigationBarHidden(true)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct CustomNavView_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavView{
            Color.orange
        }
    }
}

extension UINavigationController {
    open override func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = nil
    }
}
