//
//  TreesView.swift
//  EnviHero
//
//  Created by 김보윤 on 2020/07/30.
//  Copyright © 2020 김보윤. All rights reserved.
//

import SwiftUI

struct TreesView: View {
    
    
    var body: some View {
        NavigationView {
            
            ZStack {
                Image("bgrnd 2").resizable().aspectRatio(contentMode: .fill)
                Rectangle().frame(width: 200, height: 150).cornerRadius(20).opacity(0.5).padding(.top).shadow(radius: 20)
                VStack {
                    Text("3586").font(.custom("Futura", size: 50)).foregroundColor(.white)
                    Text("Trees").font(.custom("Futura", size: 20)).foregroundColor(.white)
                    
                }.navigationBarTitle("Trees", displayMode: .inline).padding(.top)
            }
        }
    }
}
// 1 Tree = 22kg/year
// 1 ton of CO2 = 45.4 trees / year


struct TreesView_Previews: PreviewProvider {
    static var previews: some View {
        TreesView()
    }
}


