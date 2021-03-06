//
//  ContentView.swift
//  ToDoList WatchKit Extension
//
//  Created by George Higbie on 3/31/21.
//

import SwiftUI

struct ContentView: View {
    @State private var taskContent = "";
    @State private var tasks = [Task]()
    
    var body: some View {
        VStack{
            HStack{
                TextField("Enter a Task", text: $taskContent)
                Button{
                    guard taskContent.isEmpty == false
                    else{ return }
                    let task = Task(text: taskContent, id: UUID())
                    tasks.append(task)
                    taskContent = ""
                } label: {
                    Image(systemName: "plus")
                }
                    .fixedSize()
                    .buttonStyle(BorderedButtonStyle(tint: .orange))
            }
            List {
                ForEach(0..<tasks.count, id: \.self){i in
                    NavigationLink(
                        destination: DetailView(task: tasks[i], index: i)){
                        Text(tasks[i].text)
                            .lineLimit(1)
                    }
                }
            }
            Spacer()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
