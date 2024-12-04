//
//  Home.swift
//  Cleanr
//
//  Created by Zavier Hofstetter on 10/15/24.
//

import SwiftUI

struct Home: View {
    var body: some View {
        GeometryReader{ geometry in
            NavigationStack {
                VStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 20).fill(.black)
                        Button(action:{}) {
                            Text("Welcome, User!")
                        }
                    }
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 20).fill(.black)
                        Button(action:{}) {
                            Label("", systemImage: "plus")
                        }
                        .padding(.leading, 9.0)
                    }
                    .padding(.leading, 350.0)
                    .frame(height: geometry.size.height * 0.05)
                    .frame(width: geometry.size.width * 0.1)
                }
                    
                    Spacer()
                        .frame(height: geometry.size.height * 0.7)
                
                    
                    HStack{
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.blue)
                            
                            Image("Todolist")
                                .resizable()
                                .renderingMode(.original)
                                .aspectRatio(contentMode: .fit)
                                .padding(.all)
                            
                            NavigationLink("         ", destination: Todo())
                            
                        }
                        
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.indigo)
                            
                            Image("Home")
                                .resizable()
                                .renderingMode(.original)
                                .aspectRatio(contentMode: .fit)
                                .padding(.all)
                        }

                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.blue)
                        
                            Image("YOLOpic")
                                .resizable()
                                .renderingMode(.original)
                                .aspectRatio(contentMode: .fit)
                                .padding(.all)
                        
                            NavigationLink("         ", destination: YOLO())
                        }
                    }
                }
            }
        }
    }


#Preview {
    Home()
}

class HomeVHC: UIHostingController<Home> {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder, rootView: Home())
    }
}
