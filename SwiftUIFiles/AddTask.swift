//
//  AddTask.swift
//  Cleanr
//
//  Created by Zavier Hofstetter on 10/21/24.
//

import SwiftUI
import SwiftData

struct AddTask: View {
    @Environment(\.modelContext) private var context
    @Query private var items: [DataItem]
    
    @State var newTaskName: String = ""
    @State var newTaskRoom: String = ""
    @State private var action: Int? = 0
    
    func AssignTask() {
        //Create Item
        let item = DataItem(name: newTaskName)
        
        //Add Item to DataContext
        context.insert(item)
    }
    func DeleteTask(item: DataItem) {
        context.delete(item)
    }

    var body: some View {
        VStack{
            Text("Add New Task")
                .multilineTextAlignment(.leading)
            TextField("Enter Task Name Here", text: $newTaskName)//"$" sign allows dynamic modification of a variable
                .multilineTextAlignment(.center)
            
            Button(action: {
                AssignTask()
            }, label: {
                    //NavigationLink(destination: Todo()) {
                        Text("Assign Task")
                    //}
                })
            
            /*Text("Todo List Link")
                .onTapGesture {
                    self.action = 1
            }*/
            /*ZStack {
            Button("Assign Task"){
                AssignTask()
            }
            .buttonStyle(.borderedProminent)
            .tint(.black)
            
             }*/
                
            List {
                ForEach(items) { item in Text(item.name)
                }
                .onDelete { indexes in
                    for index in indexes {
                        DeleteTask(item: items[index])
                    }
                }
           }
        }
        .padding()
    }
}

#Preview {
    AddTask()
}
