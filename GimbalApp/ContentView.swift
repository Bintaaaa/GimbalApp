//
//  ContentView.swift
//  GimbalApp
//
//  Created by Bijantyum on 01/10/22.
//

import SwiftUI

struct ContentView: View {
    init(){
        UITabBar.appearance().barTintColor = .systemBackground
    }
    @State var selectedIndex = 0
    let tabBarImages = ["house", "magnifyingglass", "person"]
    var body: some View {
        VStack{
            ZStack{
                switch selectedIndex{
                    case 0:
                        HomePage()
                    default:
                        Text("test")
                }
            }
            
            Spacer()
            HStack{
            ForEach(0..<3){num in
                Button(action: {
                    selectedIndex = num
                }, label: {
                    Spacer()
                    Image(systemName: tabBarImages[num]).font(.system(size: 24, weight: .bold
                        )
                        
                    ).foregroundColor(selectedIndex == num ? Color(.black) : .init(white: 0.7)
                    )
                        Spacer()
                })
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
