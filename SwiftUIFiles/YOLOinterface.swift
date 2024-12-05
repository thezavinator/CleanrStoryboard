//
//  YOLOinterface.swift
//  CleanrStoryboard
//
//  Created by Zavier Hofstetter on 12/4/24.
//

import SwiftUI

struct YOLOinterface: View {
    var body: some View {
        GeometryReader{ geometry in
            VStack {
                StoryboardYOLOController().edgesIgnoringSafeArea(.all)
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.blue)
                        .frame(width: 110, height: 35)
                    Text("Add Tasks")
                        .font(.system(size: 20))
                }
                Spacer()
                    .frame(width: geometry.size.width, height: geometry.size.height * 0.05)
            }//VStack
        }//GeometryReader
    }//View body
}//View Struct

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
