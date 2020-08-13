//
//  WebLaunchScreen.swift
//  EnviHero
//
//  Created by 김보윤 on 2020/08/09.
//  Copyright © 2020 김보윤. All rights reserved.
//

import SwiftUI
import WebKit

struct WebLaunchScreen: View {
    @ObservedObject var webViewStateModel: WebViewStateModel = WebViewStateModel()
    var body: some View {
        NavigationView {
            LoadingView(isShowing: .constant(webViewStateModel.loading)) { //loading logic taken from https://stackoverflow.com/a/56496896/9838937
                //Add onNavigationAction if callback needed
                WebView(url: URL.init(string: "https://www.carbonfootprint.com/calculator.aspx")!, webViewStateModel: self.webViewStateModel)
            }
            .navigationBarTitle(Text("Let's calculate your Carbon Footprint"), displayMode: .inline)
            .navigationBarItems(trailing:
                Button("Last Page") {
                    self.webViewStateModel.goBack.toggle()
                }.disabled(!webViewStateModel.canGoBack)
            )
        }
    }
}



struct WebLaunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        WebLaunchScreen()
    }
}
