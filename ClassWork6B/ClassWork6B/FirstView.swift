//
//  FirstView.swift
//  ClassWork6B
//
//  Created by khaled falah alazemi  on 19/09/2022.
//

import SwiftUI

struct FirstView: View {
    @State var text = ""
    @State var chosen = Color.gray
    var chooseColor = [Color.red , Color.blue , Color.yellow , Color.green]
    var body: some View {
        ZStack{
            Color(
                red : 0xE0 / 255 ,
                green : 0xE0 / 255 ,
                blue : 0xE0 / 255
            )
            .ignoresSafeArea()
            VStack{
                Text("دفـتـر اليـومـيّات")
                    .bold()
                    .font(.largeTitle)
                    .padding()
                Spacer()
                Text("اختر اللون المُفضل")
                    .font(.title3)
                HStack{
                    ForEach(chooseColor, id: \.self){ color in
                            Circle()
                                .frame(width: 70, height: 70)
                                .foregroundColor(color)
                                .opacity(0.5)
                                .onTapGesture{
                                    chosen = color
                                }
                    }
                }
//                HStack{
//                    Circle()
//                        .frame(width: 70, height: 70)
//                        .foregroundColor(.red)
//                        .opacity(0.5)
//                        .onTapGesture{
//                            color = "red"
//                        }
//                    Circle()
//                        .frame(width: 70, height: 70)
//                        .foregroundColor(.blue)
//                        .opacity(0.5)
//                        .onTapGesture{
//                            color = "blue"
//                        }
//                    Circle()
//                        .frame(width: 70, height: 70)
//                        .foregroundColor(.green)
//                        .opacity(0.5)
//                        .onTapGesture{
//                            color = "green"
//                        }
//                    Circle()
//                        .frame(width: 70, height: 70)
//                        .foregroundColor(.yellow)
//                        .opacity(0.5)
//                        .onTapGesture{
//                            color = "yellow"
//                        }
//                } .padding()
                Text("ماذا تريد أن تكتب ؟ ")
                    .font(.title3)
                    .padding()
                TextField("write here", text: $text)
                    .padding()
                    .background(.white)
                    .frame(width: 350)
                Spacer()
                
                NavigationLink(destination: SecondView(color: $chosen, text: $text)) {
                     
                    ZStack{
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: 200, height: 60, alignment: .center)
                            .foregroundColor(.mint)
                        Text("حفظ")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.black)
                        
                        
                    }
                }
                    
            }
        }
    }
}


struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
