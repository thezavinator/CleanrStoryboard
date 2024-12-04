//
//  ContentView.swift
//  Cleanr
//
//  Created by Zavier Hofstetter on 10/10/24.
//

import SwiftUI

struct LoginScreen: View {
    var body: some View {
        NavigationStack{//This makes it possible to follow links to other pages
            ZStack{
                //Background Color
                Color(.blue)
                    .ignoresSafeArea()
                VStack {//Organizes the elements' layout
                    
                    Image("cleanrimage")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.all)
                    
                    NavigationLink("Login", destination: Home())
                    }
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                }
            }
        }
}

struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
                LoginScreen()
    }
}


