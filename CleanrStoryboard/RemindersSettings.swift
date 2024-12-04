//
//  RemindersSettings.swift
//  Cleanr
//
//  Created by Zavier Hofstetter on 10/15/24.
//

import SwiftUI

struct RemindersSettings: View {
    func AssignTaskInfo() {
        day1Name = GetDay(i: 0)
        day1Task = "Clean Gutters"
        
        day2Name = GetDay(i: 1)
        day2Task = "Clean Kitchen"
    }
    func GetDay(i: Int) -> String{
        let f = DateFormatter()
        let day = f.weekdaySymbols[Calendar.current.component(.weekday, from: Date()) - 1 + i]
        return day
    }
    
    @State var day0Name: String = "Overdue Tasks"
    @State var day1Name: String = ""
    @State var day2Name: String = ""
    
    @State var day0Task: String = ""
    @State var day1Task: String = ""
    @State var day2Task: String = ""
    var body: some View {
        GeometryReader{ geometry in
        NavigationStack {
            VStack{
                Text("User Settings")
                Text("Notifications")
                    .multilineTextAlignment(.trailing)
                    .padding(.leading, 300.0)
                
                Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/){
                    Text("All Push Notifications")
                        .padding(.leading, 20.0)
                }.padding(.trailing, 20.0)
                
                
                    .onAppear{
                        AssignTaskInfo()
                    }
                
                
                
                HStack{
                    /*Text(day0Task)
                        .multilineTextAlignment(.trailing)
                        .padding(.leading, 40.0)*/
                    Text(day0Name)
                        .multilineTextAlignment(.center)
                        .padding(40.0)
                    
                    Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/){
                    }.padding(.trailing, 20.0)
                }
                
                Text(day1Name)
                    .multilineTextAlignment(.center)
                
                HStack{
                    Text(day1Task)
                        .multilineTextAlignment(.trailing)
                        .padding(.leading, 40.0)
                    
                    Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/){
                    }.padding(.trailing, 20.0)
                }
                       
                Text(day2Name)
                    .multilineTextAlignment(.leading)
                
                HStack{
                    Text(day2Task)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 40.0)
                    
                    Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/){
                    }.padding(.trailing, 20.0)
                }
                    
                
                
                Spacer()
                    .frame(height: geometry.size.height * 0.45)
                
                    
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
                            
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    RemindersSettings()
}
