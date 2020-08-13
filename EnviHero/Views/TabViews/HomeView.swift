//
//  HomeView.swift
//  EnviHero
//
//  Created by 김보윤 on 2020/07/30.
//  Copyright © 2020 김보윤. All rights reserved.
//

import SwiftUI

struct HomeView: View {//Solution is this method!
    init(){
        UITableView.appearance().backgroundColor = .none
        UITableViewCell.appearance().backgroundColor = .none
        UITableView.appearance().tableFooterView = UIView()
    }
    
    @State private var options = ["Habits","Insights"]
    @State private var selectedOption = 0
    
    var body: some View {
        
        
        NavigationView {
            ZStack (alignment: .bottom){
                GeometryReader { geo in
                    VStack {
                        Spacer()
//                        Image("Sunset").resizable().aspectRatio(contentMode: .fill)
                        //Wave1
                        Image("MountainTreesWide")
                            .aspectRatio(contentMode: .fit)
                            .clipped()
                            .frame(width: geo.size.width)
                    }
                }
                VStack (alignment: .center, spacing: 30){
                    Text("Your average Carbon Footprint").font(.custom("Futura", size: 16)).frame(width: 350, alignment: .leading).padding()
                    //Inner Circle
                    ZStack {
                        Circle()
                            .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        
                        Circle()
                            .strokeBorder(Color(#colorLiteral(red: 0.9083333611488342, green: 0.9083333611488342, blue: 0.9083333611488342, alpha: 1)), lineWidth: 3)
                        
                        Circle()
                            .strokeBorder(Color(#colorLiteral(red: 0.3660069406032562, green: 0.6916666626930237, blue: 0.4571916460990906, alpha: 1)), lineWidth: 3)
                        
                        
                        VStack {
                            //15.1
                            Text("15.1").font(.custom("Futura", size: 40)).foregroundColor(Color(#colorLiteral(red: 0.37, green: 0.69, blue: 0.46, alpha: 1))).multilineTextAlignment(.leading).frame(width: 100)
                            //tons/year
                            Text("tons/year").font(.custom("Futura", size: 15)).foregroundColor(Color(#colorLiteral(red: 0.74, green: 0.74, blue: 0.74, alpha: 1))).multilineTextAlignment(.center)
                        }
                    }
                    Picker(selection: $selectedOption, label: Text("Authentication Path")) {
                        Text("Habits").tag(0)
                        Text("Insights").tag(1)
                    }
                    .pickerStyle(SegmentedPickerStyle()).padding(.horizontal)
                    
                    if selectedOption == 0 {
                        List{
                            NavigationLink (destination: HangView()){
                                HStack {
                                    //Content Block
                                    RoundedRectangle(cornerRadius: 8)
                                        .fill(Color(#colorLiteral(red: 0.9647058844566345, green: 0.9647058844566345, blue: 0.9647058844566345, alpha: 1)))
                                        .frame(width: 50, height: 50)
                                    VStack (alignment: .leading) {
                                        //Recycle
                                        Text("Recycle").font(.custom("Futura", size: 16)).foregroundColor(.black)
                                        //He'll want to use your yac...
                                        Text("He'll want to use your yacht, and I don't want this thing smelling like fish.").font(.custom("Futura", size: 12)).foregroundColor(.black)
                                    }
                                }
                            }
                            NavigationLink (destination: HangView()) {
                            HStack {
                                //Content Block
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(Color(#colorLiteral(red: 0.9647058844566345, green: 0.9647058844566345, blue: 0.9647058844566345, alpha: 1)))
                                    .frame(width: 50, height: 50)
                                VStack (alignment: .leading) {
                                    //Recycle
                                    Text("Reduce Plastic Bags").font(.custom("Futura", size: 16)).foregroundColor(.black)
                                    //He'll want to use your yac...
                                    Text("He'll want to use your yacht, and I don't want this thing smelling like fish.").font(.custom("Futura", size: 12)).foregroundColor(.black)
                                }
                            }
                            }
                            NavigationLink (destination: HangView()) {
                            HStack {
                                //Content Block
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(Color(#colorLiteral(red: 0.9647058844566345, green: 0.9647058844566345, blue: 0.9647058844566345, alpha: 1)))
                                    .frame(width: 50, height: 50)
                                VStack (alignment: .leading) {
                                    //Recycle
                                    Text("Use Paper Bags").font(.custom("Futura", size: 16)).foregroundColor(.black)
                                    //He'll want to use your yac...
                                    Text("He'll want to use your yacht, and I don't want this thing smelling like fish.").font(.custom("Futura", size: 12)).foregroundColor(.black)
                                }
                            }
                            }
                        }
                    }
                    else {
                        List{
                            HStack {
                                //Icon
                                Circle()
                                    .fill(Color(#colorLiteral(red: 0.3660069406032562, green: 0.6916666626930237, blue: 0.4571916460990906, alpha: 1)))
                                    .frame(width: 16, height: 16)
                                    .padding(.horizontal, 10)
                                
                                //Travel
                                Text("Travel").font(.custom("Futura", size: 16))
                                Spacer()
                                //42.7%
                                Text("42.7%").font(.custom("Futura", size: 14)).multilineTextAlignment(.trailing)
                            }
                            .frame(maxWidth: .infinity)
                            HStack {
                                //Icon
                                Circle()
                                    .fill(Color(red: 75/255, green: 148/255, blue: 96/255))
                                    .frame(width: 16, height: 16)
                                    .padding(.horizontal, 10)
                                
                                //Travel
                                Text("Housing").font(.custom("Futura", size: 16))
                                Spacer()
                                //42.7%
                                Text("42.7%").font(.custom("Futura", size: 14)).multilineTextAlignment(.trailing)
                            }
                            .frame(maxWidth: .infinity)
                            HStack {
                                //Icon
                                Circle()
                                    .fill(Color(#colorLiteral(red: 0.3660069406032562, green: 0.6916666626930237, blue: 0.4571916460990906, alpha: 1)))
                                    .frame(width: 16, height: 16)
                                    .padding(.horizontal, 10)
                                
                                //Travel
                                Text("Consumption").font(.custom("Futura", size: 16))
                                Spacer()
                                //42.7%
                                Text("42.7%").font(.custom("Futura", size: 14)).multilineTextAlignment(.trailing)
                            }
                            .frame(maxWidth: .infinity)
                            HStack {
                                //Icon
                                Circle()
                                    .fill(Color(red: 75/255, green: 148/255, blue: 96/255))
                                    .frame(width: 16, height: 16)
                                    .padding(.horizontal, 10)
                                
                                //Travel
                                Text("Diet").font(.custom("Futura", size: 16))
                                Spacer()
                                //42.7%
                                Text("42.7%").font(.custom("Futura", size: 14)).multilineTextAlignment(.trailing)
                            }
                            .frame(maxWidth: .infinity)
                        }
                    }
                    
                    ZStack {
                        
                        NavigationLink(destination: AddHabitsView()) {
                            Image("Addbutton")
                                .renderingMode(.original)
                                .scaleEffect(0.8)
                                .frame(width: 350, alignment: .trailing)
                        }
                    }
                }.navigationBarTitle("Home", displayMode: .inline)
            }
        }
    }
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
