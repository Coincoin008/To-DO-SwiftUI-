//
//  addTaskView.swift
//  ToDo
//
//  Created by Elliot Rabaroust-Lefèvre on 18/03/2022.
//

import SwiftUI

struct addTaskView: View {

    @State private var name = ""
    @State private var description = ""
    var body: some View {
        VStack{ //All
            
            VStack{// TOP
               Text("Ajouter une tâche")
                    .font(.system(size: 50))
                
            }//:top
            .padding(.top, 20)
            Spacer()
            
            VStack{// CENTER
                
                HStack{// NAME
                    
                    Text("Nom :")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(10)
                    TextField("Ex: faire les courses", text: $name)
                        .font(.title)
                }//:name
                
                VStack{// DESCRIPTION
                    Text("Description")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(10)

                        TextEditor(text: $description)
                            .padding(10)
                            .font(.title)
                        
                        
                        
                    
                }//: description
                
            }//:center
            .padding(.top, 200)
            Spacer()
            
            VStack{ // BOTTOM
                
                Button(action:{ // Save button
                    
                 
                }){
                    HStack{
                        Text("Sauvegarder")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .padding()
                    }
                    .background(.blue)
                    
                } //: save button
                .clipShape(Capsule())
                
                Button(action:{  // Cancel button
                    name = ""
                    description = ""
                }){
                    HStack{
                        
                        Text("Cancel")
                            .font(.title)
                    }
                }//: cancel button
            }//: bottom
        }//:all
        
    }
}

struct addTaskView_Previews: PreviewProvider {
    static var previews: some View {
        addTaskView()
    }
}
