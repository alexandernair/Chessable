//
//  ChessCardView.swift
//  Chessable
//
//  Created by Alex Nair on 12/23/20.
//

import SwiftUI

struct ChessCardView: View {
    //Mark: PROPERTIES
   @State private var isAnimating = false
    
    //Mark: BODY
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                //CHESS: IMAGE
                Image("king")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red:  0, green: 0, blue: 0, opacity: 0.15), radius: 10, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6 )
                
                //CHESS: TITLE
                Text("The King!")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .shadow(color: Color(red:  0, green: 0, blue: 0, opacity: 0.15), radius: 10, x: 6, y: 8);
                
                //CHESS: HEADLINE
                
                Text("Capture me and the game is done")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,16)
                    .frame(maxWidth:480);
                
                //BUTTON: START
                StartButtonView()
        }//VStack
        }//Zstack
        .onAppear() {
            withAnimation(.easeOut(duration: 1.2)){
                isAnimating = true;
            }
        }
        .frame(minWidth:0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment:.center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorKingLight"), Color("ColorKingDark")]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
        .cornerRadius(20)
        .padding();
    }
}

//Mark: PREVIEW
struct ChessCardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ChessCardView()
                .previewLayout(.fixed(width: 320, height: 640))
        }
    }
}
