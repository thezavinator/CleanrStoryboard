//
//  Todo.swift
//  Cleanr
//
//  Created by Zavier Hofstetter on 10/15/24.
//

import SwiftUI
import SwiftData

struct Todo: View {
    @Environment(\.modelContext) private var context
    @Query private var items: [DataItem]
    
    @State var newTaskName: String = ""
    
    var Tasks = false//FIXME
    var daysShown = 7//FIXME
    @State var ShowUpcomingOnly: Bool = true
    
    
    var day0Name: String = "Overdue Tasks"
    @State var day1Name: String = ""
    @State var day2Name: String = ""
    
    @State var day1Task: String = ""
    @State var day2Task: String = ""
    
    func AssignTask() {
        //Create Item
        let item = DataItem(name: newTaskName)
        
        //Add Item to DataContext
        context.insert(item)
    }
    func DeleteTask(item: DataItem) {
        context.delete(item)
    }
    
    func GetDay(i: Int) -> String{
        let f = DateFormatter()
        let day = f.weekdaySymbols[Calendar.current.component(.weekday, from: Date()) - 1 + i]
        return day
    }
    
    func DisplayDays() {
        
        
       /* for i in 1...7 {
            let day = GetDay(i: i)
            let _ = print(Text(day + ":").multilineTextAlignment(.leading)
                .bold()
                .multilineTextAlignment(.center)
                .padding(10)
                .border(.gray))//Prints the Current Day of the Week
            
            if(!Tasks){
                Text("No Tasks Assigned, yet...")
                    .multilineTextAlignment(.leading)
                    .bold()
                    //.multilineTextAlignment(.center)
            }
            else{
                //Display Tasks
            }
        */
        //}
    }
    
    func AssignTaskInfo() {
        day1Name = GetDay(i: 0)
        day1Task = "Clean Gutters"
        
        day2Name = GetDay(i: 1)
        day2Task = "Clean Kitchen"
    }
    
    var body: some View {
        GeometryReader{ geometry in
        NavigationStack {
            VStack{
                Spacer()
                    .frame(height: geometry.size.height * 0.05)
                
                HStack{
                    Text("Welcome, User!")
                        .multilineTextAlignment(.leading)
                        .bold()
                        .multilineTextAlignment(.center)
                 
                    Spacer()
                        .frame(width: geometry.size.width * 0.4)
                }
                
                Spacer()
                    .frame(height: geometry.size.width * 0.05)
                
                    .onAppear{
                        AssignTaskInfo()
                    }
                
                HStack{
                    Text("Completed")
                        .multilineTextAlignment(.trailing)
                        .padding(.leading, 300)
                }
                
                //TASKLIST
                List {
                    ForEach(items) { item in Text(item.name)
                    }
                    .onDelete { indexes in
                        for index in indexes {
                            DeleteTask(item: items[index])
                        }
                    }
                }
                .padding([.leading, .bottom, .trailing], 20)
                
               /* List {
                    Toggle(isOn: $ShowUpcomingOnly) {
                        Text("Show Upcoming Only")
                    }
                    Tasks.ForEach  { Task in
                        print(Task)
                    }
                }*/
                /*HStack{
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
                }*/
                
                /*VStack{
                    Text("Add New Task")
                        .multilineTextAlignment(.leading)
                        .bold()
                        .underline()
                    TextField("Enter Task Name Here", text: $newTaskName)//"$" sign allows dynamic modification of a variable
                        .multilineTextAlignment(.center)
                        
                        Button("Add Task"){
                            AssignTask()
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.black)
                }
                .padding()*/
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.blue)
                    
                    Text("Add Task")
                    
                    NavigationLink("      ", destination: AddTask())
                }
                    
                    HStack{
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.indigo)
                            
                            Image("Todolist")
                                .resizable()
                                .renderingMode(.original)
                                .aspectRatio(contentMode: .fit)
                                .padding(.all)
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
}

#Preview {
    Todo()
}
