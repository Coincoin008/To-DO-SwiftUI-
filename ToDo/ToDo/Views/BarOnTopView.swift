//
//  BarOnTop.swift
//  ToDo
//
//  Created by Elliot Rabaroust-Lefèvre on 16/03/2022.
//

import SwiftUI

struct BarOnTop: View {
    var numberOfTasks: Int
   
    var body: some View {
        HStack{
            HStack{
                Text("To Do")
                    .fontWeight(.bold)
            }
                .padding( 15)
            
            Spacer()
            HStack{
                Text("Nombre de taches:")
                    .fontWeight(.bold)
                Text(String(numberOfTasks))
            }
            .padding(15)
            
            
        }
        .foregroundColor(.white)
        .padding(10)
        
       
    }
}

struct BarOnTop_Previews: PreviewProvider {
    static var previews: some View {
        BarOnTop(numberOfTasks: 3)
            
    }
}
