//
//  SideMenuHeaderView.swift
//  SideMenu
//
//  Created by Kidiatoliny Gonçalves on 16/01/22.
//

import SwiftUI

struct SideMenuHeaderView: View {
    
    @Binding var isShowing: Bool
    
    var body: some View {
        
        ZStack(alignment:.topTrailing) {
            
            Button(action:{
                withAnimation(.spring())
                {
                    isShowing.toggle()
                }
                
            }, label:{
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32)
                    .foregroundColor(.white)
                    .padding()
            })
            
            VStack(alignment:.leading){
                
                Image("profile")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                    .padding(.bottom,16)
                
                Text("Kidiatoliny Gonçalves")
                    .font(.system(size:24, weight: .semibold))
                    .foregroundColor(.white)
                
                Text("kidiatoliny@gmail.com")
                    .font(.system(size: 14))
                    .accentColor(.white)
                
                HStack{
                    Spacer()
                }
                
                Spacer()
                
            }.padding()
        }
        
        
        
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isShowing: .constant(true))
    }
}
