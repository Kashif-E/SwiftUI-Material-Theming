//
//  ContentView.swift
//  SwiftUIThemingExample
//
//  Created by Kashif.Mehmood on 18/01/2023.
//

import SwiftUI

struct ContentView: View {
   @EnvironmentObject var theme : Theme
    @EnvironmentObject var themeManeger : ThemeManager
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!").font(theme.typography.h1).foregroundColor(theme.colors.warning)
            ZStack{
                Capsule().foregroundColor(theme.colors.error).onTapGesture {
                    themeManeger.current = .dark
                    
                }.frame(width: 200, height: 90)
               
            }
           
            Text("Change theme").foregroundColor(theme.colors.error).font(theme.typography.body2).onTapGesture {
                themeManeger.current = .light

            }
            Text("I have got the fonts like compose").modifier(theme.typography.h3Style())
            
            Text("Title styele").modifier(LargeTitleStyle())
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
