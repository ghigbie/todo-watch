//
//  DetailView.swift
//  ToDoList WatchKit Extension
//
//  Created by George Higbie on 4/5/21.
//

import SwiftUI

struct DetailView: View {
    var text: String;
    
    var body: some View {
        Text(text)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(text: "moo")
    }
}
