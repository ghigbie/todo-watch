//
//  DetailView.swift
//  ToDoList WatchKit Extension
//
//  Created by George Higbie on 4/5/21.
//

import SwiftUI

struct DetailView: View {
    let task: Task;
    let index: Int;
    
    var body: some View {
        VStack{
            Text(task.text)
            Spacer()
        }
        .navigationTitle("Task \(index + 1)")
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        let testTask: Task = Task(text: "This is some test text that goes moo moo moo moo moo oik oink", id: UUID())
        DetailView(task: testTask, index: 0)
    }
}
