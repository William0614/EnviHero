//
//  GalleryView.swift
//  EnviHero
//
//  Created by 김보윤 on 2020/08/08.
//  Copyright © 2020 김보윤. All rights reserved.
//

import SwiftUI
import WebKit

struct GalleryView: View {
    @ObservedObject var webViewStateModel: WebViewStateModel = WebViewStateModel()
    var body: some View {
        
        NavigationView {
            LoadingView(isShowing: .constant(webViewStateModel.loading)) { //loading logic taken from https://stackoverflow.com/a/56496896/9838937
                //Add onNavigationAction if callback needed
                WebView(url: URL.init(string: "https://www.nationalgeographic.com/photography/")!, webViewStateModel: self.webViewStateModel)
            }
            .navigationBarTitle(Text("National Geographic Photography"), displayMode: .inline)
            .navigationBarItems(trailing:
                Button("Last Page") {
                    self.webViewStateModel.goBack.toggle()
                }.disabled(!webViewStateModel.canGoBack)
            )
            
        }
        
    }
}




struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
