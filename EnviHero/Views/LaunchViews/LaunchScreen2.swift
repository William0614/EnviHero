//
//  LaunchScreen2.swift
//  EnviHero
//
//  Created by 김보윤 on 2020/07/30.
//  Copyright © 2020 김보윤. All rights reserved.
//

import SwiftUI

struct LaunchScreen2: View {
    var body: some View {
        
        VStack {
            Spacer()
            //carbon-footprint-730x410-r...
            Image("Carbon Footprint")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 252, height: 141)
                .clipped()
                .frame(width: 252, height: 141)
            
            VStack (alignment: .leading, spacing: 10) {
                //How Does EnviHero Work?
                Text("How Does EnviHero Work?").font(.custom("Futura", size: 24))
                //EnviHero
                Text("EnviHero").font(.custom("Futura", size: 16))
                ScrollView {
                    //EnviHero works based on Ca...
                    Text("EnviHero works based on Carbon Footprint. It is the amount of carbon dioxide and other carbon compounds you emit by consuming everyday materials. It is very harmful for our environment!\n\nWith this app, we track you how much Carbon you produce and helps you to reduce them!\n").font(.custom("Futura", size: 16)).foregroundColor(Color(#colorLiteral(red: 0.4, green: 0.4, blue: 0.4, alpha: 1))).frame(width: 350)
                }
            }
            Spacer()
            //Wave 2
            Image("Wave2").padding(.bottom, -7)
            ZStack {
                //Background
                Rectangle()
                    .fill(Color(#colorLiteral(red: 0.9803921580314636, green: 0.9803921580314636, blue: 0.9803921580314636, alpha: 1)))
                    .frame(width: 375, height: 83)
                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.30000001192092896)), radius:0, x:0, y:-0.5)
                
                HStack (spacing: 90) {
                    //Rectangle 9
                    RoundedRectangle(cornerRadius: 100)
                        .fill(Color(#colorLiteral(red: 0.9083333611488342, green: 0.9083333611488342, blue: 0.9083333611488342, alpha: 1)))
                        .frame(width: 32, height: 32)
                    
                    //Rectangle 11
                    RoundedRectangle(cornerRadius: 100)
                        .fill(Color(#colorLiteral(red: 0.3660069406032562, green: 0.6916666626930237, blue: 0.4571916460990906, alpha: 1)))
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

struct LaunchScreen2_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen2()
    }
}
