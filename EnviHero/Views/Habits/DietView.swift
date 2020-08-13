//
//  DietView.swift
//  EnviHero
//
//  Created by 김보윤 on 2020/08/02.
//  Copyright © 2020 김보윤. All rights reserved.
//
import SwiftUI

struct DietView: View
{
    //    @EnvironmentObject var UIState: UIStateModel
    
    var UIState: UIStateModel
    
    var body: some View
    {
        let spacing:            CGFloat = 16
        let widthOfHiddenCards: CGFloat = 32    // UIScreen.main.bounds.width - 10
        let cardHeight:         CGFloat = 500
        
        let items = [
            Card( id: 0, name: "Use Bus" ),
            Card( id: 1, name: "Walk" ),
            Card( id: 2, name: "Ride Bike" ),
            Card( id: 3, name: "Swim" )
        ]
        
        return  Canvas
            {
                //
                // TODO: find a way to avoid passing same arguments to Carousel and Item
                //
                Carousel( numberOfItems: CGFloat( items.count ), spacing: spacing, widthOfHiddenCards: widthOfHiddenCards )
                {
                    ForEach( items, id: \.self.id ) { item in
                        Item( _id:                  Int(item.id),
                              spacing:              spacing,
                              widthOfHiddenCards:   widthOfHiddenCards,
                              cardHeight:           cardHeight )
                        {
                            Text("\(item.name)")
                        }
                        .foregroundColor( Color.white )
                        .background(Color(#colorLiteral(red: 0.3660069406032562, green: 0.6916666626930237, blue: 0.4571916460990906, alpha: 1)))
                        .cornerRadius( 20 )
                            
                        .transition( AnyTransition.slide )
                        .animation( .spring() )
                    }
                }
                .environmentObject( self.UIState )
        }.navigationBarTitle("Diet", displayMode: .inline)
    }
}

struct DietView_Previews: PreviewProvider {
    static var previews: some View {
        DietView(UIState: UIStateModel())
    }
}
