//
//  IntroductionScreen.swift
//  GimbalApp
//
//  Created by Bijantyum on 01/10/22.
//

import SwiftUI

struct IntroductionScreen: View {
    @State var isLinkActive = false
    var body: some View {
        if self.isLinkActive{
            ContentView()
        }else{
            VStack {
                Image("introduction").padding(
                    .bottom, 32)
                Text("Adding Fun to Your Life")
                    .font(.system(size: 32)).bold()
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 16)
                Text("Doing anything what you want\nuntill you fun and fly")
                    .font(.system(size: 24))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 22)
                Button(action: {
                    self.isLinkActive = true
                }) {
                    Text("Let's Play!")
                        .frame(width: 300 , height: 24, alignment: .center
                        )
                        .font(.system(size: 24))
                        
                }.buttonStyle(GrowingButton())
            }.padding()
        }
    }
}

struct IntroductionScreen_Previews: PreviewProvider {
    static var previews: some View {
        IntroductionScreen()
    }
}

struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .foregroundColor(.white)
            .scaleEffect(configuration.isPressed ? 2 : 1)
            .animation(.easeOut(duration: 0.3), value: configuration.isPressed
            )
            .background(Color("minteaGreen"))
            .cornerRadius(12)
    }
}
