//
//  ContentView.swift
//  EnviHero
//
//  Created by 김보윤 on 2020/07/30.
//  Copyright © 2020 김보윤. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView()
            .tabItem{
                Image(systemName: "person")
                Text("Home")
            }.tag(0)
            StatsView()
            .tabItem{
                //icons8-mountain-64 1
                Image("Mountain")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 30, height: 30)
                    .clipped()
                .frame(width: 30, height: 30)
                Text("Stats")
            }.tag(1)
            TreesView()
                .tabItem{
                    //icons8-tree-64 1
                    Image("Tree image 1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height:30)

//                        .aspectRatio(contentMode: .fill)
                        
                    
//                        .clipped()
                    Text("Trees")
            }.tag(2)
            WebsitesView()
                .tabItem{
                    Image("Compass 1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 31, height: 31)
                        .clipped()
                        .frame(width: 31, height: 31)
                    Text("News")
            }.tag(3)
            GalleryView()
                .tabItem{
                    Image(systemName: "photo.on.rectangle")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 31, height: 31)
                        .clipped()
                        .frame(width: 31, height: 31)
                    Text("Gallery")
            }.tag(4)
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
