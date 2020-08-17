//
//  FlightOffest.swift
//  EnviHero
//
//  Created by 김보윤 on 2020/08/14.
//  Copyright © 2020 김보윤. All rights reserved.
//

import SwiftUI

struct FlightOffest: View {
    var body: some View {
        ZStack {
                    Rectangle().frame(height: 600).cornerRadius(20)
                    VStack (alignment: .leading, spacing: 10){
                        Image("offset").resizable().aspectRatio(contentMode: .fit).cornerRadius(10)
                        Text("Offset your flight").font(.custom("Futura", size: 25)).foregroundColor(.white)
                        Text("Flights are a major source of anyone's carbon footprint. They can take as much as 80% of your footprint! By purchasing flight carbon offsets when you buy your ticket, you can offset the amount of carbon you emit by using the flight.").font(.custom("Futura", size: 15)).foregroundColor(.white)
                        Text("Energy Impact: average -300kg/flight").font(.custom("Futura", size: 15)).foregroundColor(.green)
                        Image("5stars")
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

struct FlightOffest_Previews: PreviewProvider {
    static var previews: some View {
        FlightOffest()
    }
}
