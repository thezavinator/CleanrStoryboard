//
//  YOLO.swift
//  Cleanr
//
//  Created by Zavier Hofstetter on 11/12/24.
//

import SwiftUI
import AVKit
import Vision
import AVFoundation
import UIKit


struct YOLO: View {
    var body: some View {
        GeometryReader{ geometry in
            NavigationStack {
                VStack {
                    Spacer()
                        .frame(width: geometry.size.width, height: geometry.size.height * 0.65)
                    
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.blue)
                        
                        Text("Scan Room")
                            
                        
                        NavigationLink("         ", destination: YOLOinterface())
                        
                    }
                    
                    Spacer()
                        .frame(width:
                                geometry.size.width, height: geometry.size.height * 0.05)
        
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
                                .fill(.blue)
                            
                            Image("Home")
                                .resizable()
                                .renderingMode(.original)
                                .aspectRatio(contentMode: .fit)
                                .padding(.all)
                            
                            NavigationLink("         ", destination: Home())
                            
                        }
                        
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.indigo)
                            
                            Image("YOLOpic")
                                .resizable()
                                .renderingMode(.original)
                                .aspectRatio(contentMode: .fit)
                                .padding(.all)
                            
                        }//ZStack
                    }//HStack
                }//VStack
            }//NavigationStack
        }//GeometryReader
    }//Var Body
}//Struct YOLO View

#Preview {
    YOLO()
}



