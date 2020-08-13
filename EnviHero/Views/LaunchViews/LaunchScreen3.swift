//
//  LaunchScreen3.swift
//  EnviHero
//
//  Created by 김보윤 on 2020/07/30.
//  Copyright © 2020 김보윤. All rights reserved.
//

import SwiftUI

struct LaunchScreen3: View {
    var body: some View {
        NavigationView {
        VStack (spacing: 10) {
            //Let’s Calculate Your Carbo...
            Text("Calculation Complete").font(.custom("Futura", size: 24)).padding(.bottom, 20)
            
            ScrollView {
                
                //Where do you live?
                Text("Insert Your Calculated Carbon Footprint").font(.custom("Futura", size: 15)).multilineTextAlignment(.center).padding(.top, 100)
                
                //Rectangle 17
                // Composition groups need to live inside some a stack. (VStack, ZStack, or HStack)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    
                    RoundedRectangle(cornerRadius: 20)
                        .strokeBorder(Color(#colorLiteral(red: 0.364705890417099, green: 0.6901960968971252, blue: 0.4588235318660736, alpha: 1)), lineWidth: 2)
                }
                .compositingGroup()
                .frame(width: 222, height: 30)
                .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                
            }.frame(width: 350)
            
            //Rectangle 242
            
            
            //
            //                    //Wave 3
            //                    Image("Wave3").padding(.bottom, -9)
            NavigationLink(destination: HomeView()) {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).frame(width: 149, height: 35)
                    
                    RoundedRectangle(cornerRadius: 20)
                        .strokeBorder(Color(#colorLiteral(red: 0.364705890417099, green: 0.6901960968971252, blue: 0.4588235318660736, alpha: 1)), lineWidth: 2).frame(width: 149, height: 35)
                    
                    //Get Started
                    Text("Get Started").font(.custom("Futura", size: 16)).frame(width: 149, height: 35)
                }
            }
            
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
                        .fill(Color(#colorLiteral(red: 0.9083333611488342, green: 0.9083333611488342, blue: 0.9083333611488342, alpha: 1)))
                        .frame(width: 32, height: 32)
                    
                    //Rectangle 13
                    RoundedRectangle(cornerRadius: 100)
                        .fill(Color(#colorLiteral(red: 0.3660069406032562, green: 0.6916666626930237, blue: 0.4571916460990906, alpha: 1)))
                        .frame(width: 32, height: 32)
                }
            }
            
        }.edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct LaunchScreen3_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen3()
    }
}
