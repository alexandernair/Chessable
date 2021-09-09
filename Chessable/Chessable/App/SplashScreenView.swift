//
//  SplashScreenView.swift
//  Chessable
//
//  Created by Alex Nair on 1/5/21.
//

import SwiftUI

struct SplashScreenView: View {
    //MARK: PROPERTIES
    
    //MARK: BODY
    
    
    var body: some View {
        TabView {
            ForEach(0 ..< 3){ item in
                ChessCardView()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}

//MARK: PREVEIW 
struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
