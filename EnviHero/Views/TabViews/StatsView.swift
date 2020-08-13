//
//  StatsView.swift
//  EnviHero
//
//  Created by 김보윤 on 2020/07/30.
//  Copyright © 2020 김보윤. All rights reserved.
//

import SwiftUI

struct StatsView: View {
    var body: some View {
        NavigationView {
            ZStack (alignment: .bottom){
                GeometryReader { geo in
                    VStack {
                        Spacer()
                        //Wave1
                        Image("MountainTreesWide")
                            .aspectRatio(contentMode: .fit)
                            .clipped()
                            .frame(width: geo.size.width)
                    }
                }
                VStack {
                    ScrollView {
                        VStack (spacing: 20){
                            HStack (spacing: 20){
                                ZStack (alignment: .leading){
                                    //Content Block
                                    RoundedRectangle(cornerRadius: 20)
                                        .frame(width: 150, height: 150)
                                    VStack (alignment: .leading) {
                                        Text("Your Average").font(.custom("Futura", size: 18)).foregroundColor(.white)
                                        Text("15.1").font(.custom("Futura", size: 30)).foregroundColor(.white).padding(.top, 20)
                                        Text("tons/year").font(.custom("Futura", size: 15)).foregroundColor(.white)
                                        Spacer()
                                    }.padding()
                                }
                                
                                ZStack (alignment: .leading){
                                    //Content Block
                                    RoundedRectangle(cornerRadius: 20)
                                        .frame(width: 150, height: 150)
                                    VStack (alignment: .leading) {
                                        Text("National Average").font(.custom("Futura", size: 15)).foregroundColor(.white)
                                        Text("15.1").font(.custom("Futura", size: 30)).foregroundColor(.white).padding(.top, 20)
                                        Text("tons/year").font(.custom("Futura", size: 15)).foregroundColor(.white)
                                        Spacer()
                                    }.padding()
                                }
                            }.padding(.horizontal)
                            HStack (spacing: 20){
                                ZStack (alignment: .leading){
                                    //Content Block
                                    RoundedRectangle(cornerRadius: 20)
                                        .frame(width: 150, height: 150)

                                    VStack (alignment: .leading) {
                                        Text("Percentile").font(.custom("Futura", size: 18)).foregroundColor(.white)
                                        Text("25%").font(.custom("Futura", size: 30)).foregroundColor(.white).padding(.top, 20)
                                        Text("Copared to National Level").font(.custom("Futura", size: 12)).foregroundColor(.white).lineLimit(nil)
                                        Spacer()
                                    }.padding()
                                }
                                ZStack (alignment: .leading){
                                    //Content Block
                                    RoundedRectangle(cornerRadius: 20)
                                        .frame(width: 150, height: 150)
                                    VStack (alignment: .leading) {
                                        Text("Your Average").font(.custom("Futura", size: 18)).foregroundColor(.white)
                                        Text("15.1").font(.custom("Futura", size: 30)).foregroundColor(.white).padding(.top, 20)
                                        Text("tons/year").font(.custom("Futura", size: 15)).foregroundColor(.white)
                                        Spacer()
                                    }.padding()
                                }
                            }.padding(.horizontal)
                            HStack (spacing: 20){
                                ZStack (alignment: .leading){
                                    //Content Block
                                    RoundedRectangle(cornerRadius: 20)
                                        .frame(width: 150, height: 150)
                                    VStack (alignment: .leading) {
                                        Text("Your Average").font(.custom("Futura", size: 18)).foregroundColor(.white)
                                        Text("15.1").font(.custom("Futura", size: 30)).foregroundColor(.white).padding(.top, 20)
                                        Text("tons/year").font(.custom("Futura", size: 15)).foregroundColor(.white)
                                        Spacer()
                                    }.padding()
                                }
                                ZStack (alignment: .leading){
                                    //Content Block
                                    RoundedRectangle(cornerRadius: 20)
                                        .frame(width: 150, height: 150)
                                    VStack (alignment: .leading) {
                                        Text("Your Average").font(.custom("Futura", size: 18)).foregroundColor(.white)
                                        Text("15.1").font(.custom("Futura", size: 30)).foregroundColor(.white).padding(.top, 20)
                                        Text("tons/year").font(.custom("Futura", size: 15)).foregroundColor(.white)
                                        Spacer()
                                    }.padding()
                                }
                            }.padding(.horizontal)
                        }.padding(5).navigationBarTitle("Stats", displayMode: .inline)
                    }
                }
            }
        }
    }
}

struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView()
    }
}
