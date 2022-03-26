//
//  tacheModel.swift
//  ToDo
//
//  Created by Elliot Rabaroust-Lefèvre on 17/03/2022.
//

import Foundation

struct TaskModel: Identifiable, Equatable{
    var id = UUID()
    var name: String
    var isDone: Bool = false
    
}
