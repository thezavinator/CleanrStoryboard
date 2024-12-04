//
//  YOLOinterface.swift
//  CleanrStoryboard
//
//  Created by Zavier Hofstetter on 12/4/24.
//

import SwiftUI

struct YOLOinterface: View {
    var body: some View {
        StoryboardYOLOController().edgesIgnoringSafeArea(.all)
        //ZStack {
        
            //VStack {
                //Spacer()
                //Button(action: {print("Button Pressed")} ) {Text("Button")}
                
                //RoundedRectangle(cornerRadius: 20)
                    //.fill(.blue)
                
                //Text("Add Tasks")
                
            //}
            
        //}
        
        
    }
}

#Preview {
    YOLOinterface()
}

struct StoryboardYOLOController: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let controller = storyboard.instantiateViewController(identifier: "StoryboardYOLOController")
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
