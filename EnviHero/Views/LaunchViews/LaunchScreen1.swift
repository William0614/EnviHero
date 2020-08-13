//
//  LaunchScreen1.swift
//  EnviHero
//
//  Created by 김보윤 on 2020/07/30.
//  Copyright © 2020 김보윤. All rights reserved.
//

import SwiftUI

struct LaunchScreen1: View {
    var body: some View {
        VStack {
            //sustainable-development-goals 1
            Spacer()
            Image("SDG1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 193)
                .clipped()
                .frame(width: 300, height: 193)
                .padding()
            
                
            VStack (alignment: .leading, spacing: 10) {
                //Your Impact Makes a Change
                Text("Your Impact Makes a Change").font(.custom("Futura", size: 24))
                //EnviHero
            Text("EnviHero").font(.custom("Futura", size: 16))
                
                ScrollView {
                //UN has set 17 Sustainable ...
                Text("UN has set 17 Sustainable Development Goals that aims to achieve them by 2030. They are the blueprint to achieve a better and more sustainable future for all. With this app, you will at least achieve 5 sustainability goals! We are very sure that YOU will become a hero who will save our lovely world.").font(.custom("Futura", size: 16)).foregroundColor(Color(#colorLiteral(red: 0.4, green: 0.4, blue: 0.4, alpha: 1))).frame(width: 350)
                }
                Spacer()
            }
            
            //Wave 1
            Image("Wave1")
                .padding(.bottom, -7)
            ZStack {
                //Background
                Rectangle()
                    .fill(Color(#colorLiteral(red: 0.9803921580314636, green: 0.9803921580314636, blue: 0.9803921580314636, alpha: 1)))
                    .frame(width: 375, height: 83)
                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.30000001192092896)), radius:0, x:0, y:-0.5)
                
                HStack (spacing: 90) {
                    //Rectangle 9
                    RoundedRectangle(cornerRadius: 100)
                        .fill(Color(#colorLiteral(red: 0.3660069406032562, green: 0.6916666626930237, blue: 0.4571916460990906, alpha: 1)))
                        .frame(width: 32, height: 32)
                    
                    //Rectangle 11
                    RoundedRectangle(cornerRadius: 100)
                        .fill(Color(#colorLiteral(red: 0.9083333611488342, green: 0.9083333611488342, blue: 0.9083333611488342, alpha: 1)))
                        .frame(width: 32, height: 32)
                    
                    //Rectangle 13
                    RoundedRectangle(cornerRadius: 100)
                        .fill(Color(#colorLiteral(red: 0.9083333611488342, green: 0.9083333611488342, blue: 0.9083333611488342, alpha: 1)))
                        .frame(width: 32, height: 32)
                }
            }
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct LaunchScreen1_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen1()
    }
}
