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


struct YOLO: View {
    //@StateObject private var model = FrameHandler()
    //@ObservedObject private var controller = YOLOController()
    
    //Create YOLOController
    //@ObservedObject var controller = YOLOController()
    //var sceneDelegate = SceneDelegate()
    var body: some View {
        GeometryReader{ geometry in
            NavigationStack {
                VStack {
                    //let _ = self.callSetupVideo()
                    
                    //_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions
                    
                    ZStack {
                        
                        //Button(action: { sceneDelegate.scene() }, label: { Text("Scan Room") })
                        
                        //Button(action: { callSetupVideo() }, label: { Text("Scan Room") })
                        
                        //Button(action: { callSetupVideo() }, label: { Text("Scan Room") })
                        
                        //FrameView(image: controller.previewView)
                        
                        Spacer()
                            .frame(width: geometry.size.width, height: geometry.size.height * 0.70)
                    
                    
                        //FrameView(image: model.frame)
                            //.frame(width: geometry.size.width, height: geometry.size.height * 0.80)
                    }
                    
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
    /*func callSetupVideo() {
        controller.setupVideo()
    }*/
}//Struct View

#Preview {
    YOLO()
}
