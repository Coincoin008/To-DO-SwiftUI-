//
//  ContentView.swift
//  ToDo
//
//  Created by Elliot Rabaroust-Lefèvre on 13/03/2022.
//

import SwiftUI
import FirebaseDatabase

struct ContentView: View {
    @State private var isHidenAddTask: Bool = true
    @State private var nameNewTask: String = ""
    @State private var isHidenErrorMessage: Bool = true
    @State private var taskList: [TaskModel] = []
    @State var listOfTask: [TaskModel] = getData()
    @FocusState private var isFocusedNameField: Bool
    
    init(){
        print("self.data: \(self.listOfTask)")
    }
        
    @AppStorage("addTask") var addTask = false
    
    var body: some View {

        VStack{
                
            HStack{
                BarOnTop(numberOfTasks: taskList.count)
                    .background(.blue)
                
            }

                    NavigationView{
                        List{
                            ForEach(listOfTask[0..<listOfTask.count]){item in
                                    NavigationLink(destination: personalizedTaskView(task:item)){
                                        RowWorkView(task: item, action: {print(item.name)})
                                        .padding(.bottom, 10)
                                        //.background(.red)
                                    }
                                    
                                }
                            if isHidenAddTask{
                                
                                Button(action: {
                                    isHidenAddTask = false
                                }, label: {
                                    HStack{
                                        Image(systemName: "plus.circle")
                                        Text("Ajouter une tâche")
                                    }
                                })
                            }
                            
                            else{
                                HStack{
                                    TextField("Nom de la tâche", text: $nameNewTask)
                                        .focused($isFocusedNameField)
                                    Spacer()
                                    Image(systemName: "plus.circle")
                                        .onTapGesture{
                                            
                                            if !nameNewTask.isEmpty{
                                                addData(task: TaskModel(name: nameNewTask))
                                                print(taskList)
                                                nameNewTask = ""
                                                isHidenAddTask = true
                                                isHidenErrorMessage = true
                                            }
                                            else{
                                               isHidenErrorMessage = false
                                            }
                                            
                                        }
                                    Image(systemName: "minus.circle")
                                        .onTapGesture {
                                            isHidenAddTask = true
                                            nameNewTask = ""
                                            isHidenErrorMessage = true
                                            

                                        }
                                }
                                if !isHidenErrorMessage {
                                    Text("Votre nom doit comporter au moins 1 caractère")
                                        .foregroundColor(.red)
                                }
                                
                                
                            }
                                    
                        }
                        
                    }
                
            }
            
            .onAppear {
                /*let ref = Database.database().reference()
                let ref2 = ref.child("tasks")
                //var snapshotDict: NSDictionary
                var namesTasksList = [TaskModel(name: "")]
                ref2.observe(.value) { snapshot in
                    var snapshotDict = snapshot.value as! NSDictionary
                    print(type(of: snapshotDict))
                    
                    for n in snapshotDict{
                            namesTasksList.append(TaskModel(name: n.key as! String))
                            
                            print(n.key)
                        }
                    print("taaaaa: \(namesTasksList)")
                }*/
            }
            
           
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
            
    }
}
