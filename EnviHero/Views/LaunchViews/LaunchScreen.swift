//
//  LaunchScreen.swift
//  EnviHero
//
//  Created by 김보윤 on 2020/07/30.
//  Copyright © 2020 김보윤. All rights reserved.
//

import SwiftUI

struct LaunchScreen: View {
    var body: some View {
            VStack{
                //—Pngtree—cartoon cartoon e...
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 148, height: 148)
                    .clipped()
                    .frame(width: 148, height: 148).padding(.bottom, -15)
                //App Title
                Text("EnviHero").font(.custom("Rounded Mplus 1c Bold", size: 20))
                //“Our World Depends on You”
                Text("“Our World Depends on You”").font(.custom("Rounded Mplus 1c Bold", size: 10))
            }
        }
    }

struct LaunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen()
    }
}
