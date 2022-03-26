//
//  RowWorkView.swift
//  ToDo
//
//  Created by Elliot Rabaroust-Lefèvre on 17/03/2022.
//

import SwiftUI

struct RowWorkView: View {
    var task: TaskModel
    let action: () -> Void
    @State private var isDone = false
    var body: some View {
        HStack{
            
            HStack{
                Text(task.name)
                    .fontWeight(.bold)
                    .padding(5)
            }
                .padding(10)
            Spacer()
            Toggle("", isOn: $isDone)
                .onTapGesture {
                    if isDone == false{
                        print("✅task is done")
                        action()
                    }
                }
        
            }
        .padding(0)
    
        }
}

struct RowWorkView_Previews: PreviewProvider {
    static var previews: some View {
        RowWorkView(task: TaskModel(name: "Faire"), action: {print("Hello")})
    }
}

