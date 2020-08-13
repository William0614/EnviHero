//
//  AddHabitsView.swift
//  EnviHero
//
//  Created by 김보윤 on 2020/08/01.
//  Copyright © 2020 김보윤. All rights reserved.
//

import SwiftUI

struct AddHabitsView: View {
    var body: some View {
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
                List {
                    NavigationLink(destination: TravelView(UIState: UIStateModel())) {
                        HStack {
                            //Content Block
                            RoundedRectangle(cornerRadius: 8)
                                .fill(Color(#colorLiteral(red: 0.9647058844566345, green: 0.9647058844566345, blue: 0.9647058844566345, alpha: 1)))
                                .frame(width: 50, height: 50)
                            VStack (alignment: .leading) {
                                //Travel
                                Text("Travel").font(.custom("Futura", size: 16))
                                //He'll want to use your yac...
                                Text("He'll want to use your yacht, and I don't want this thing smelling like fish.").font(.custom("Futura", size: 14))
                                
                            }
                        }.frame(height: 80)
                    }
                    
                    NavigationLink(destination: HousingView(UIState: UIStateModel())) {
                        HStack {
                            //Content Block
                            RoundedRectangle(cornerRadius: 8)
                                .fill(Color(#colorLiteral(red: 0.9647058844566345, green: 0.9647058844566345, blue: 0.9647058844566345, alpha: 1)))
                                .frame(width: 50, height: 50)
                            VStack (alignment: .leading) {
                                //Travel
                                Text("Housing").font(.custom("Futura", size: 16))
                                //He'll want to use your yac...
                                Text("He'll want to use your yacht, and I don't want this thing smelling like fish.").font(.custom("Futura", size: 14))
                                
                            }
                        }.frame(height: 80)
                    }
                    NavigationLink(destination: DietView(UIState: UIStateModel())) {
                        HStack {
                            //Content Block
                            RoundedRectangle(cornerRadius: 8)
                                .fill(Color(#colorLiteral(red: 0.9647058844566345, green: 0.9647058844566345, blue: 0.9647058844566345, alpha: 1)))
                                .frame(width: 50, height: 50)
                            VStack (alignment: .leading) {
                                //Travel
                                Text("Diet").font(.custom("Futura", size: 16))
                                //He'll want to use your yac...
                                Text("He'll want to use your yacht, and I don't want this thing smelling like fish.").font(.custom("Futura", size: 14))
                                
                            }
                        }.frame(height: 80)
                    }
                    NavigationLink(destination: ConsumptionView(UIState: UIStateModel())) {
                        HStack {
                            //Content Block
                            RoundedRectangle(cornerRadius: 8)
                                .fill(Color(#colorLiteral(red: 0.9647058844566345, green: 0.9647058844566345, blue: 0.9647058844566345, alpha: 1)))
                                .frame(width: 50, height: 50)
                            VStack (alignment: .leading) {
                                //Travel
                                Text("Consumption").font(.custom("Futura", size: 16))
                                //He'll want to use your yac...
                                Text("He'll want to use your yacht, and I don't want this thing smelling like fish.").font(.custom("Futura", size: 14))
                                
                            }
                        }.frame(height: 80)
                    }
                }.padding(.top, 20)
            }.navigationBarTitle("Habits", displayMode: .inline)
        }
    }
}

struct AddHabitsView_Previews: PreviewProvider {
    static var previews: some View {
        AddHabitsView()
    }
}
