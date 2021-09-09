//
//  StartButtonView.swift
//  Chessable
//
//  Created by Alex Nair on 1/5/21.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: PROPERTIES
    
    //MARK: BODY
    var body: some View {
        Button(action: {
            print("Leave the splash screen.")
        }, label: {
            HStack(spacing: 8){
                Text("Start")
            
                Image(systemName: "arrow.right.circle" ).imageScale(.large)
        }
        })//BUTTON
        .accentColor(.white)
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
