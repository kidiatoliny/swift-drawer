//
//  SideMenuView.swift
//  SideMenu
//
//  Created by Kidiatoliny Gonçalves on 16/01/22.
//

import SwiftUI

struct SideMenuView: View {
    
    @Binding var isShowing: Bool
    
    var body: some View {
        
        ZStack{
            LinearGradient(
                colors: [Color.blue, Color.purple],
                startPoint: .top,
                endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack{
                SideMenuHeaderView(isShowing:$isShowing)
                    .frame(height:240)
                
                ForEach(SideMenuViewModel.allCases, id:\.self) { option in
                    NavigationLink (
                        destination: Text(option.title),
                        label:{
                            SideMenuOptionsView(menuViewModel: option)
                        }
                    )
                }
                
                Spacer()
            }
            
        }.navigationBarHidden(true)
        
        
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}
