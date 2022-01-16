//
//  SideMenuOptionsView.swift
//  SideMenu
//
//  Created by Kidiatoliny Gonçalves on 16/01/22.
//

import SwiftUI

struct SideMenuOptionsView: View {
    
    let  menuViewModel: SideMenuViewModel
    
    var body: some View {
        HStack{
            Image(systemName: menuViewModel.imageName)
                .frame(width: 24, height: 24)
            
            Text(menuViewModel.title)
                .font(.system(size: 15, weight: .semibold))
            Spacer()
        }
        .foregroundColor(.white)
        .padding()
    }
}

struct SideMenuOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionsView(menuViewModel: .messages)
    }
}
