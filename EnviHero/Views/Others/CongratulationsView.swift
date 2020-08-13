//
//  CongratulationsView.swift
//  EnviHero
//
//  Created by 김보윤 on 2020/08/02.
//  Copyright © 2020 김보윤. All rights reserved.
//

import SwiftUI

struct CongratulationsView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack {
            Color(red: 93/255, green: 176/255, blue: 117/255)
                .edgesIgnoringSafeArea(.all)
            Rectangle()
                .frame(width: 343, height: 363)
                .foregroundColor(.white)
                .cornerRadius(20)
            VStack {
                //Congratulations!
                Text("Congratulations!").font(.custom("Futura", size: 30)).multilineTextAlignment(.center).padding()
                
                //You have reached your tree...
                Text("You have completed your habit!").font(.custom("Futura", size: 16)).foregroundColor(Color(#colorLiteral(red: 0.4, green: 0.4, blue: 0.4, alpha: 1))).multilineTextAlignment(.center).padding(.bottom)
                
                //5stars
                Image("5stars").padding(.bottom,100)
                
                ZStack {
                    Rectangle()
                        .frame(width: 200, height: 40)
                        .foregroundColor(Color(red: 93/255, green: 176/255, blue: 117/255))
                        .cornerRadius(100)

                    NavigationLink (destination: AddHabitsView()) {
                        //Set a New Goal
                        Text("Set a New Goal").font(.custom("Futura", size: 16)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                    }
                }
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                    self.presentationMode.wrappedValue.dismiss()
                    //리스트에 있었던 항목 삭제하기
                }) {
                    Text("Continue").font(.custom("Futura", size: 16)).foregroundColor(Color(#colorLiteral(red: 0.37, green: 0.69, blue: 0.46, alpha: 1))).multilineTextAlignment(.center)
                }
//                NavigationLink (destination: HomeView()) {
//                    //Continue
//                    Text("Continue").font(.custom("Futura", size: 16)).foregroundColor(Color(#colorLiteral(red: 0.37, green: 0.69, blue: 0.46, alpha: 1))).multilineTextAlignment(.center)
//                }.navigationBarHidden(true)
            }
            
        }
    }
}

struct CongratulationsView_Previews: PreviewProvider {
    static var previews: some View {
        CongratulationsView()
    }
}
