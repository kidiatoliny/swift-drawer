//
//  HomeView.swift
//  SideMenu
//
//  Created by Kidiatoliny Gonçalves on 16/01/22.
//

import SwiftUI

struct HomeView: View {
    
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack {
            
            Color(.white)
                .navigationTitle("Home")
                
            
            Text("Hello, world!")
                .padding()
            
        }
        .cornerRadius(isShowing ? 20 : 10)
        .offset(x: isShowing ? 300 : 0, y: isShowing ? 44 : 0)
        .scaleEffect(isShowing ? 0.8 : 1)
        .navigationBarItems(leading: Button(action: {
            
            withAnimation(.spring()){
                isShowing.toggle()
            }
            
        }, label: {
            
            Image(systemName: "line.3.horizontal")
                .foregroundColor(.black)
            
        }))
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(isShowing: .constant(true))
    }
}
