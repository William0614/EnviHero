//
//  HousingView.swift
//  EnviHero
//
//  Created by 김보윤 on 2020/08/02.
//  Copyright © 2020 김보윤. All rights reserved.
//

import SwiftUI

struct HousingView: View
{
    //    @EnvironmentObject var UIState: UIStateModel
    
    var UIState: UIStateModel
    
    var body: some View {
        let spacing:            CGFloat = 16
        let widthOfHiddenCards: CGFloat = 32    // UIScreen.main.bounds.width - 10
        let cardHeight:         CGFloat = 500
        
//        var logoImage: [UIImage] = [
//            UIImage(named: "clothesline")!,
//            UIImage(named: "Turn-down-old-heating")!,
//            UIImage(named: "kettle")!,
//            UIImage(named: "shower")!,
//            UIImage(named: "power")!,
//        ]
//
//        let Card1 = VStack {
//            Image("clothesline").resizable().aspectRatio(contentMode: .fit)
//            Text("Hang out the washing instead of tumble drying")
//                .padding(.bottom, 10)
//            Text("Hanging the washing out instead of using the tumble drier will save about 153kg CO2 a year - that's £52 (USD68) each year, based on 150 cycles a year.")
//        }
//
//        let Card2 = VStack {
//            Image("Turn-down-old-heating").resizable().aspectRatio(contentMode: .fit)
//            Text("Turn down the heating by 1⁰C")
//                .padding(.bottom, 10)
//            Text("Reducing your heating by 1⁰C can reduce your energy consumption by 8%. For an average household gas bill of 12,500kWh this will reduce your CO2 emissions by 184kg - that's £42 (USD55) each year.")
//        }
//
//        let Card3 = VStack {
//            Image("kettle").resizable().aspectRatio(contentMode: .fit)
//            Text("Only fill the kettle with the amount of water you need to boil")
//                .padding(.bottom, 10)
//            Text("Only boiling the amount of water for your hot drink will save 72kg CO2 a year - that's £23 (USD30) per annum")
//        }
//
//        let Card4 = VStack {
//            Image("shower").resizable().aspectRatio(contentMode: .fit)
//            Text("Spend less time in the shower")
//                .padding(.bottom, 10)
//            Text("Spending 1 minute less in the shower can save 23kg CO2 and £8 (USD10) a year (based on one shower a day and a 9kW shower).")
//        }
//
//        let Card5 = VStack {
//            Image("power").resizable().aspectRatio(contentMode: .fit)
//            Text("Turn electrical equipment off when not in use")
//                .padding(.bottom, 10)
//            Text("Fully turning off just one LCD TV (rather than leaving it on standby) for 18 hours a day will save about 5kg CO2 a year - saving £2 a year (USD2.64). Turn off all other electrical equipment when not in use to multiply the savings.")
//        }
        
        
        let items = [
            Card( id: 0, name: "Hang out the washing instead of tumble drying " ),
            Card( id: 1, name: "Turn down the heating by 1⁰C" ),
            Card( id: 2, name: "Only fill the kettle with the amount of water you need to boil" ),
            Card( id: 3, name: "Spend less time in the shower" ),
            Card( id: 4, name: "Turn electrical equipment off when not in use" )
            
        ]

        return  Canvas {
            Carousel( numberOfItems: CGFloat( items.count ), spacing: spacing, widthOfHiddenCards: widthOfHiddenCards )
            {
                ForEach( items, id: \.self.id ) { item in
                    Item( _id:                  Int(item.id),
                          spacing:              spacing,
                          widthOfHiddenCards:   widthOfHiddenCards,
                          cardHeight:           cardHeight )
                    {
                        VStack {
                            
                            Text("\(item.name)").font(.custom("Futura", size: 20))
                            
                            Spacer()
                            NavigationLink (destination: HomeView()) {
                                ZStack {
                                Rectangle().frame(width: 100, height: 30).cornerRadius(10)
                                    Text("Add to Habits").font(.custom("Futura", size: 12)).foregroundColor(.black)
                                }
                            }
                            
                        }.padding(10)
                        
                    }
                    .foregroundColor( Color.white )
                    .background(Color(.gray))
                    .cornerRadius( 20 )
                        
                    .transition( AnyTransition.slide )
                    .animation( .spring() )
                }
            }
            .environmentObject( self.UIState )
        }.navigationBarTitle("Housing", displayMode: .inline)
    }
}

struct HousingView_Previews: PreviewProvider {
    static var previews: some View {
        HousingView(UIState: UIStateModel())
    }
}
