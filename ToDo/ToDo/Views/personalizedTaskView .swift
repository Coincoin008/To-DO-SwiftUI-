//
//  personalized .swift
//  ToDo
//
//  Created by Elliot Rabaroust-Lefèvre on 18/03/2022.
//

import SwiftUI

struct personalizedTaskView: View {
    var task: TaskModel
    var body: some View {
        VStack{
            VStack{ //MARK: TOP
                Text(task.name)
                    .font(.system(size:50, weight: .bold))
                    .padding(.top, 15)
            }//TOP
            Spacer()
            VStack{ //MARK: -CENTER
                HStack{ // Name
                    
                }// end of Name
                
                HStack{
                    
                }
            }// CENTER
        }
    }
}

struct personalized__Previews: PreviewProvider {
    static var previews: some View {
        personalizedTaskView(task: TaskModel(name: "Faire les courses"))
    }
}
