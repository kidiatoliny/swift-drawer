//
//  ContentView.swift
//  SideMenu
//
//  Created by Kidiatoliny Gonçalves on 16/01/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowing = false
    
    var body: some View {
        NavigationView{
            ZStack {
                
                if isShowing{
                    SideMenuView(isShowing: $isShowing)
                }
                
                HomeView(isShowing: $isShowing)
                  
            }
//            .onAppear{isShowing = false}
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

