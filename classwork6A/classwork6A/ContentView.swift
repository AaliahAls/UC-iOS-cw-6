//
//  ContentView.swift
//  classwork6A
//
//  Created by khaled falah alazemi  on 19/09/2022.
//

import SwiftUI
struct student : Identifiable{
    let id = UUID()
    let name : String
    let year : Int
    let age : Int
    }
struct ContentView: View {
    @State var students = [
    student(name: "ساره فهد", year: 2, age: 20),
    student(name: "نوره محمد", year: 4, age: 22),
    student(name: "راشد علي", year: 1, age: 18)
    ]
    @State var studentsNum = 0
    var body: some View {
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 50)
                    .frame(width: 450, height: 120)
                    .foregroundColor(Color.black)
                    .blur(radius: 20)
                    
                    RoundedRectangle(cornerRadius: 50)
                        .frame(width: 450, height: 120)
                        .foregroundColor(Color(
                            red: 0xF4 / 255 ,
                            green: 0xBB / 255,
                            blue: 0x44 / 255
                        ))
                Text("Students Information")
                    .font(.title)
                    .bold()
                    .foregroundColor(.black)
                    .padding(.top)
                
            } .ignoresSafeArea()
            Image("student")
                .resizable()
                .scaledToFit()
            Spacer()
            
            ForEach(students){ student in
                VStack{
                    HStack{
                        Text(student.name)
                        Text("الاسم : ")
                    } .frame(width: 300, alignment: .trailing)
                    HStack{
                        Text("\(student.year)")
                        Text("السنة : ")
                    } .frame(width: 300, alignment: .trailing)
                    HStack{
                        Text("\(student.age)")
                        Text("العمر : ")
                    } .frame(width: 300, alignment: .trailing)
                    
                    
                } .padding()
                    Divider()
                    
                }
            
            HStack{
                
                Text("\(studentsNum)")
                Text("عدد الطلبة المسجلين : ")
                    .onAppear{
                        studentsNum = students.count
                    }
                Image(systemName: "exclamationmark.circle.fill")
                    .font(.title2)
                    .foregroundColor(Color(
                        red: 0xF4 / 255 ,
                        green: 0xBB / 255,
                        blue: 0x44 / 255
                    ))
                
            } .padding()
              .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(.gray, lineWidth: 1)
            )
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
