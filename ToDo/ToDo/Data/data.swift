//
//  data.swift
//  ToDo
//
//  Created by Elliot Rabaroust-Lefèvre on 17/03/2022.
//

import Foundation
import FirebaseDatabase
import SwiftUI

func addData(task: TaskModel){
    
    let ref = Database.database().reference()
    ref.child("tasks").child(task.name).setValue(["name": task.name])
    
    
}



func getData() -> [TaskModel]{
    let ref = Database.database().reference()
    let ref2 = ref.child("tasks")
    //var snapshotDict: NSDictionary
    var namesTasksList = [TaskModel(name: "")]
    let semaphore = DispatchSemaphore(value: 0)
    
    ref2.observe(.value) { snapshot in
        semaphore.signal()
        var snapshotDict = snapshot.value as! NSDictionary
        print(type(of: snapshotDict))
        
        for n in snapshotDict{
                namesTasksList.append(TaskModel(name: n.key as! String))
                print(n.key)
            }
        print("taaaaa: \(namesTasksList)")
    }
    
    semaphore.wait()
    
   print("nameTaskList//: \(namesTasksList)")
    
    return namesTasksList
}



