//
//  SplashScreen.swift
//  GimbalApp
//
//  Created by Bijantyum on 01/10/22.
//

import SwiftUI

struct SplashScreen: View {
    @State var isActive:Bool = false
    var body: some View {
        VStack{
            if self.isActive{
                IntroductionScreen()
            }else{
                Image("splash")
            }
        }.onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                withAnimation{
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
