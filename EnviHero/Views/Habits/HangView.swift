//
//  RecycleView.swift
//  EnviHero
//
//  Created by 김보윤 on 2020/08/13.
//  Copyright © 2020 김보윤. All rights reserved.
//

import SwiftUI

struct HangView: View {
    var body: some View {
        ZStack {
            Rectangle().frame(height: 600).cornerRadius(20)
            VStack (alignment: .leading, spacing: 10){
                Image("clothesline").resizable().aspectRatio(contentMode: .fit)
                Text("Hang out the washing instead of tumble drying").font(.custom("Futura", size: 25)).foregroundColor(.white)
                Text("Hanging the washing out instead of using the tumble drier will save about 153kg CO2 a year - that's £52 (USD68) each year, based on 150 cycles a year.").font(.custom("Futura", size: 15)).foregroundColor(.white)
                Text("Energy Impact: -15kg").font(.custom("Futura", size: 15)).foregroundColor(.green)
                Image("3stars")
                NavigationLink (destination: CongratulationsView()) {
                    ZStack {
                        Rectangle().frame(width: 100, height: 30).cornerRadius(10).foregroundColor(.white)
                    Text("I did it!").font(.custom("Futura", size: 12)).foregroundColor(.black)
                    }.frame(width: 300, alignment: .trailing)
                }
            }.padding()
        }.padding()
    }
}

struct HangView_Previews: PreviewProvider {
    static var previews: some View {
        HangView()
    }
}

